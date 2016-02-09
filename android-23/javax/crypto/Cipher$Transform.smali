.class Ljavax/crypto/Cipher$Transform;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transform"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final needToSet:Ljavax/crypto/Cipher$NeedToSet;


# direct methods
.method static synthetic -get0(Ljavax/crypto/Cipher$Transform;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljavax/crypto/Cipher$Transform;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljavax/crypto/Cipher$Transform;)Ljavax/crypto/Cipher$NeedToSet;
    .locals 1

    #@0
    iget-object v0, p0, Ljavax/crypto/Cipher$Transform;->needToSet:Ljavax/crypto/Cipher$NeedToSet;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "needToSet"    # Ljavax/crypto/Cipher$NeedToSet;

    #@0
    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 149
    iput-object p1, p0, Ljavax/crypto/Cipher$Transform;->name:Ljava/lang/String;

    #@5
    .line 150
    iput-object p2, p0, Ljavax/crypto/Cipher$Transform;->needToSet:Ljavax/crypto/Cipher$NeedToSet;

    #@7
    .line 148
    return-void
.end method
