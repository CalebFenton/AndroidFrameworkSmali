.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$PBKDF2WithHmacSHA18BIT;
.super Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$BasePBKDF2WithHmacSHA1;
.source "SHA1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBKDF2WithHmacSHA18BIT"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 164
    const-string/jumbo v0, "PBKDF2WithHmacSHA1And8bit"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$BasePBKDF2WithHmacSHA1;-><init>(Ljava/lang/String;I)V

    #@7
    .line 162
    return-void
.end method
