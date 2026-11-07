.class public final Lcom/android/org/conscrypt/KeyGeneratorImpl$HmacSHA256;
.super Lcom/android/org/conscrypt/KeyGeneratorImpl;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HmacSHA256"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 121
    const/16 v0, 0x100

    const/4 v1, 0x0

    const-string v2, "HmacSHA256"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/org/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/KeyGeneratorImpl-IA;)V

    .line 122
    return-void
.end method
