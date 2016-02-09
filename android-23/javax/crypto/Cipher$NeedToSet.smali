.class final enum Ljavax/crypto/Cipher$NeedToSet;
.super Ljava/lang/Enum;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NeedToSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/crypto/Cipher$NeedToSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/crypto/Cipher$NeedToSet;

.field public static final enum BOTH:Ljavax/crypto/Cipher$NeedToSet;

.field public static final enum MODE:Ljavax/crypto/Cipher$NeedToSet;

.field public static final enum NONE:Ljavax/crypto/Cipher$NeedToSet;

.field public static final enum PADDING:Ljavax/crypto/Cipher$NeedToSet;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 107
    new-instance v0, Ljavax/crypto/Cipher$NeedToSet;

    #@6
    const-string/jumbo v1, "NONE"

    #@9
    invoke-direct {v0, v1, v2}, Ljavax/crypto/Cipher$NeedToSet;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Ljavax/crypto/Cipher$NeedToSet;->NONE:Ljavax/crypto/Cipher$NeedToSet;

    #@e
    new-instance v0, Ljavax/crypto/Cipher$NeedToSet;

    #@10
    const-string/jumbo v1, "MODE"

    #@13
    invoke-direct {v0, v1, v3}, Ljavax/crypto/Cipher$NeedToSet;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    #@18
    new-instance v0, Ljavax/crypto/Cipher$NeedToSet;

    #@1a
    const-string/jumbo v1, "PADDING"

    #@1d
    invoke-direct {v0, v1, v4}, Ljavax/crypto/Cipher$NeedToSet;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    #@22
    new-instance v0, Ljavax/crypto/Cipher$NeedToSet;

    #@24
    const-string/jumbo v1, "BOTH"

    #@27
    invoke-direct {v0, v1, v5}, Ljavax/crypto/Cipher$NeedToSet;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    #@2c
    .line 106
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Ljavax/crypto/Cipher$NeedToSet;

    #@2f
    sget-object v1, Ljavax/crypto/Cipher$NeedToSet;->NONE:Ljavax/crypto/Cipher$NeedToSet;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Ljavax/crypto/Cipher$NeedToSet;->$VALUES:[Ljavax/crypto/Cipher$NeedToSet;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/crypto/Cipher$NeedToSet;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 106
    const-class v0, Ljavax/crypto/Cipher$NeedToSet;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/crypto/Cipher$NeedToSet;

    #@8
    return-object v0
.end method

.method public static values()[Ljavax/crypto/Cipher$NeedToSet;
    .locals 1

    #@0
    .prologue
    .line 106
    sget-object v0, Ljavax/crypto/Cipher$NeedToSet;->$VALUES:[Ljavax/crypto/Cipher$NeedToSet;

    #@2
    return-object v0
.end method
