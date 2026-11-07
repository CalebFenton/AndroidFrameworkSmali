.class public Lcom/android/okhttp/ConnectionSpecs;
.super Ljava/lang/Object;
.source "ConnectionSpecs.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist builder(Z)Lcom/android/okhttp/ConnectionSpec$Builder;
    .registers 2

    .line 32
    new-instance v0, Lcom/android/okhttp/ConnectionSpec$Builder;

    invoke-direct {v0, p0}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Z)V

    return-object v0
.end method
