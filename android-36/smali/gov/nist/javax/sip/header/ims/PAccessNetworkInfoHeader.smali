.class public interface abstract Lgov/nist/javax/sip/header/ims/PAccessNetworkInfoHeader;
.super Ljava/lang/Object;
.source "PAccessNetworkInfoHeader.java"

# interfaces
.implements Ljavax/sip/header/Parameters;
.implements Ljavax/sip/header/Header;


# static fields
.field public static final greylist ADSL:Ljava/lang/String; = "ADSL"

.field public static final greylist ADSL2:Ljava/lang/String; = "ADSL2"

.field public static final greylist ADSL2p:Ljava/lang/String; = "ADSL2+"

.field public static final greylist GGGPP2_1X:Ljava/lang/String; = "3GPP2-1X"

.field public static final greylist GGGPP2_1XHRPD:Ljava/lang/String; = "3GPP2-1XHRPD"

.field public static final greylist GGGPP_CDMA2000:Ljava/lang/String; = "3GPP-CDMA2000"

.field public static final greylist GGGPP_GERAN:Ljava/lang/String; = "3GPP-GERAN"

.field public static final greylist GGGPP_UTRAN_FDD:Ljava/lang/String; = "3GPP-UTRAN-FDD"

.field public static final greylist GGGPP_UTRAN_TDD:Ljava/lang/String; = "3GPP-UTRAN-TDD"

.field public static final greylist GSHDSL:Ljava/lang/String; = "G.SHDSL"

.field public static final greylist HDSL:Ljava/lang/String; = "HDSL"

.field public static final greylist HDSL2:Ljava/lang/String; = "HDSL2"

.field public static final greylist IDSL:Ljava/lang/String; = "IDSL"

.field public static final greylist IEEE_802_11:Ljava/lang/String; = "IEEE-802.11"

.field public static final greylist IEEE_802_11A:Ljava/lang/String; = "IEEE-802.11a"

.field public static final greylist IEEE_802_11B:Ljava/lang/String; = "IEEE-802.11b"

.field public static final greylist IEEE_802_11G:Ljava/lang/String; = "IEEE-802.11g"

.field public static final greylist NAME:Ljava/lang/String; = "P-Access-Network-Info"

.field public static final greylist RADSL:Ljava/lang/String; = "RADSL"

.field public static final greylist SDSL:Ljava/lang/String; = "SDSL"

.field public static final greylist VDSL:Ljava/lang/String; = "VDSL"


# virtual methods
.method public abstract greylist getAccessType()Ljava/lang/String;
.end method

.method public abstract greylist getCGI3GPP()Ljava/lang/String;
.end method

.method public abstract greylist getCI3GPP2()Ljava/lang/String;
.end method

.method public abstract greylist getDSLLocation()Ljava/lang/String;
.end method

.method public abstract greylist getExtensionAccessInfo()Ljava/lang/Object;
.end method

.method public abstract greylist getUtranCellID3GPP()Ljava/lang/String;
.end method

.method public abstract greylist setAccessType(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setCGI3GPP(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setCI3GPP2(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setDSLLocation(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setExtensionAccessInfo(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist setUtranCellID3GPP(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
