.class public final enum Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
.super Ljava/lang/Enum;
.source "EAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/eap/EAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthInfoID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field public static final enum CredentialType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field public static final enum ExpandedEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field public static final enum ExpandedInnerEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field public static final enum InnerAuthEAPMethodType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field public static final enum NonEAPInnerAuthType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field public static final enum TunneledEAPMethodCredType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field public static final enum Undefined:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field public static final enum VendorSpecific:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;


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
    .line 89
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@7
    const-string/jumbo v1, "Undefined"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->Undefined:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@f
    .line 90
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@11
    const-string/jumbo v1, "ExpandedEAPMethod"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@19
    .line 91
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@1b
    const-string/jumbo v1, "NonEAPInnerAuthType"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->NonEAPInnerAuthType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@23
    .line 92
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@25
    const-string/jumbo v1, "InnerAuthEAPMethodType"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->InnerAuthEAPMethodType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@2d
    .line 93
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@2f
    const-string/jumbo v1, "ExpandedInnerEAPMethod"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedInnerEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@37
    .line 94
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@39
    const-string/jumbo v1, "CredentialType"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->CredentialType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@42
    .line 95
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@44
    const-string/jumbo v1, "TunneledEAPMethodCredType"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->TunneledEAPMethodCredType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@4d
    .line 96
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@4f
    const-string/jumbo v1, "VendorSpecific"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->VendorSpecific:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@58
    .line 88
    const/16 v0, 0x8

    #@5a
    new-array v0, v0, [Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@5c
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->Undefined:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@5e
    aput-object v1, v0, v3

    #@60
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@62
    aput-object v1, v0, v4

    #@64
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->NonEAPInnerAuthType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@66
    aput-object v1, v0, v5

    #@68
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->InnerAuthEAPMethodType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@6a
    aput-object v1, v0, v6

    #@6c
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedInnerEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@6e
    aput-object v1, v0, v7

    #@70
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->CredentialType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@72
    const/4 v2, 0x5

    #@73
    aput-object v1, v0, v2

    #@75
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->TunneledEAPMethodCredType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@77
    const/4 v2, 0x6

    #@78
    aput-object v1, v0, v2

    #@7a
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->VendorSpecific:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@7c
    const/4 v2, 0x7

    #@7d
    aput-object v1, v0, v2

    #@7f
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->$VALUES:[Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 88
    const-class v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .locals 1

    #@0
    .prologue
    .line 88
    sget-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->$VALUES:[Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@2
    return-object v0
.end method
