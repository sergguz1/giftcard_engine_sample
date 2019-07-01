create or replace PACKAGE GIFTCARD_PK AS 

  procedure get_info(p_cardno           in giftcard.pkgiftcardno%type,
                     p_kind             in out giftcard.fkgiftcardkindno%type,
                     p_status           out giftcard.fkstatusid%type,
                     p_balance          out giftcard.currentbalance%type,
                     p_initialamount    out giftcard.initialamount%type,
                     p_currency         out currency.pkcurrencyid%type,
                     p_returncode       out number,
                     p_returnmessage    out varchar2);
                     
   procedure create_card(p_amount           in giftcard.initialamount%type,
                         p_status           in giftcard.fkstatusid%type,
                         p_kind             in giftcard.fkgiftcardkindno%type,
                         p_pin              in giftcard.pin%type,
                         p_balance          out giftcard.currentbalance%type,
                         p_returncode       out number,
                         p_returnmessage    out varchar2);
                         
    procedure activate_card(p_cardno        in giftcard.pkgiftcardno%type,
                            p_amount        in giftcard.initialamount%type,
                            p_kind          in giftcard.fkgiftcardkindno%type,
                            p_pin           in giftcard.pin%type,
                            p_returncode    out number,
                            p_returnmessage out varchar2);
                     
END GIFTCARD_PK;