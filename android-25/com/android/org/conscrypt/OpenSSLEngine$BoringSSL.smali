.class Lcom/android/org/conscrypt/OpenSSLEngine$BoringSSL;
.super Ljava/lang/Object;
.source "OpenSSLEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BoringSSL"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/org/conscrypt/OpenSSLEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 41
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngine;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLEngine;-><init>(Lcom/android/org/conscrypt/OpenSSLEngine;)V

    #@6
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngine$BoringSSL;->INSTANCE:Lcom/android/org/conscrypt/OpenSSLEngine;

    #@8
    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
