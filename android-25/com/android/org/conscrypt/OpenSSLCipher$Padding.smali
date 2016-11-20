.class public final enum Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
.super Ljava/lang/Enum;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Padding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/OpenSSLCipher$Padding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

.field public static final enum ISO10126PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

.field public static final enum NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

.field public static final enum PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;


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
    .line 69
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@5
    const-string/jumbo v1, "NOPADDING"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@d
    .line 70
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@f
    const-string/jumbo v1, "PKCS5PADDING"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@17
    .line 71
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@19
    const-string/jumbo v1, "ISO10126PADDING"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ISO10126PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@21
    .line 68
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@24
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ISO10126PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    const-class v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .locals 1

    #@0
    .prologue
    .line 68
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@2
    return-object v0
.end method
