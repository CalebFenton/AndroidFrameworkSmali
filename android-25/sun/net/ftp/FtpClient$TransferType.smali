.class public final enum Lsun/net/ftp/FtpClient$TransferType;
.super Ljava/lang/Enum;
.source "FtpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/ftp/FtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/net/ftp/FtpClient$TransferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/net/ftp/FtpClient$TransferType;

.field public static final enum ASCII:Lsun/net/ftp/FtpClient$TransferType;

.field public static final enum BINARY:Lsun/net/ftp/FtpClient$TransferType;

.field public static final enum EBCDIC:Lsun/net/ftp/FtpClient$TransferType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 81
    new-instance v0, Lsun/net/ftp/FtpClient$TransferType;

    #@5
    const-string/jumbo v1, "ASCII"

    #@8
    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpClient$TransferType;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    #@d
    new-instance v0, Lsun/net/ftp/FtpClient$TransferType;

    #@f
    const-string/jumbo v1, "BINARY"

    #@12
    invoke-direct {v0, v1, v3}, Lsun/net/ftp/FtpClient$TransferType;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    #@17
    new-instance v0, Lsun/net/ftp/FtpClient$TransferType;

    #@19
    const-string/jumbo v1, "EBCDIC"

    #@1c
    invoke-direct {v0, v1, v4}, Lsun/net/ftp/FtpClient$TransferType;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lsun/net/ftp/FtpClient$TransferType;->EBCDIC:Lsun/net/ftp/FtpClient$TransferType;

    #@21
    .line 79
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lsun/net/ftp/FtpClient$TransferType;

    #@24
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->EBCDIC:Lsun/net/ftp/FtpClient$TransferType;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lsun/net/ftp/FtpClient$TransferType;->$VALUES:[Lsun/net/ftp/FtpClient$TransferType;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/net/ftp/FtpClient$TransferType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    const-class v0, Lsun/net/ftp/FtpClient$TransferType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/net/ftp/FtpClient$TransferType;

    #@8
    return-object v0
.end method

.method public static values()[Lsun/net/ftp/FtpClient$TransferType;
    .locals 1

    #@0
    .prologue
    .line 79
    sget-object v0, Lsun/net/ftp/FtpClient$TransferType;->$VALUES:[Lsun/net/ftp/FtpClient$TransferType;

    #@2
    return-object v0
.end method
