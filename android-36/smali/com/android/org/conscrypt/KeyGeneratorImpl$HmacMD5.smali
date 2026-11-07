.class public final Lcom/android/org/conscrypt/KeyGeneratorImpl$HmacMD5;
.super Lcom/android/org/conscrypt/KeyGeneratorImpl;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HmacMD5"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 94
    const/16 v0, 0x80

    const/4 v1, 0x0

    const-string v2, "HmacMD5"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/org/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/KeyGeneratorImpl-IA;)V

    .line 95
    return-void
.end method
