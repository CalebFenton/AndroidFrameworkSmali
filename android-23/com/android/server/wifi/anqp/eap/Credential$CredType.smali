.class public final enum Lcom/android/server/wifi/anqp/eap/Credential$CredType;
.super Ljava/lang/Enum;
.source "Credential.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/eap/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CredType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/eap/Credential$CredType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum Anonymous:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum Certificate:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum HWToken:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum NFC:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum None:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum Reserved:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum SIM:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum Softoken:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum USIM:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum Username:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum VendorSpecific:Lcom/android/server/wifi/anqp/eap/Credential$CredType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 14
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@7
    const-string/jumbo v1, "Reserved"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Reserved:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@f
    .line 15
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@11
    const-string/jumbo v1, "SIM"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->SIM:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@19
    .line 16
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@1b
    const-string/jumbo v1, "USIM"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->USIM:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@23
    .line 17
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@25
    const-string/jumbo v1, "NFC"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->NFC:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@2d
    .line 18
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@2f
    const-string/jumbo v1, "HWToken"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->HWToken:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@37
    .line 19
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@39
    const-string/jumbo v1, "Softoken"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Softoken:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@42
    .line 20
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@44
    const-string/jumbo v1, "Certificate"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Certificate:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@4d
    .line 21
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@4f
    const-string/jumbo v1, "Username"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Username:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@58
    .line 22
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@5a
    const-string/jumbo v1, "None"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->None:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@64
    .line 23
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@66
    const-string/jumbo v1, "Anonymous"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    #@6e
    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Anonymous:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@70
    .line 24
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@72
    const-string/jumbo v1, "VendorSpecific"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    #@7a
    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->VendorSpecific:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@7c
    .line 13
    const/16 v0, 0xb

    #@7e
    new-array v0, v0, [Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@80
    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Reserved:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@82
    aput-object v1, v0, v3

    #@84
    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->SIM:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@86
    aput-object v1, v0, v4

    #@88
    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->USIM:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@8a
    aput-object v1, v0, v5

    #@8c
    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->NFC:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@8e
    aput-object v1, v0, v6

    #@90
    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->HWToken:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@92
    aput-object v1, v0, v7

    #@94
    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Softoken:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@96
    const/4 v2, 0x5

    #@97
    aput-object v1, v0, v2

    #@99
    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Certificate:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@9b
    const/4 v2, 0x6

    #@9c
    aput-object v1, v0, v2

    #@9e
    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Username:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@a0
    const/4 v2, 0x7

    #@a1
    aput-object v1, v0, v2

    #@a3
    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->None:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@a5
    const/16 v2, 0x8

    #@a7
    aput-object v1, v0, v2

    #@a9
    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Anonymous:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@ab
    const/16 v2, 0x9

    #@ad
    aput-object v1, v0, v2

    #@af
    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->VendorSpecific:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@b1
    const/16 v2, 0xa

    #@b3
    aput-object v1, v0, v2

    #@b5
    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->$VALUES:[Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@b7
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/eap/Credential$CredType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 13
    const-class v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/eap/Credential$CredType;
    .locals 1

    #@0
    .prologue
    .line 13
    sget-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->$VALUES:[Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    #@2
    return-object v0
.end method
