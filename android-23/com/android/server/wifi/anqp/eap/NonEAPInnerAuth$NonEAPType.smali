.class public final enum Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;
.super Ljava/lang/Enum;
.source "NonEAPInnerAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NonEAPType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

.field public static final enum CHAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

.field public static final enum MSCHAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

.field public static final enum MSCHAPv2:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

.field public static final enum PAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

.field public static final enum Reserved:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 16
    new-instance v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@7
    const-string/jumbo v1, "Reserved"

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->Reserved:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@f
    new-instance v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@11
    const-string/jumbo v1, "PAP"

    #@14
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->PAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@19
    new-instance v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@1b
    const-string/jumbo v1, "CHAP"

    #@1e
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->CHAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@23
    new-instance v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@25
    const-string/jumbo v1, "MSCHAP"

    #@28
    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@2d
    new-instance v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@2f
    const-string/jumbo v1, "MSCHAPv2"

    #@32
    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAPv2:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@37
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@3a
    sget-object v1, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->Reserved:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->PAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->CHAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAPv2:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->$VALUES:[Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 16
    const-class v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;
    .locals 1

    #@0
    .prologue
    .line 16
    sget-object v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->$VALUES:[Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@2
    return-object v0
.end method
