.class Lcom/android/org/conscrypt/ScryptSecretKeyFactory$NotImplementedException;
.super Ljava/lang/RuntimeException;
.source "ScryptSecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ScryptSecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotImplementedException"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 129
    const-string v0, "Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 130
    return-void
.end method
