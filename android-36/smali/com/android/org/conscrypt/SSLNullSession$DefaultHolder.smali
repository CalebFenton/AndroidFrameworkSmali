.class Lcom/android/org/conscrypt/SSLNullSession$DefaultHolder;
.super Ljava/lang/Object;
.source "SSLNullSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/SSLNullSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultHolder"
.end annotation


# static fields
.field static final blacklist NULL_SESSION:Lcom/android/org/conscrypt/SSLNullSession;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lcom/android/org/conscrypt/SSLNullSession;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/SSLNullSession;-><init>(Lcom/android/org/conscrypt/SSLNullSession-IA;)V

    sput-object v0, Lcom/android/org/conscrypt/SSLNullSession$DefaultHolder;->NULL_SESSION:Lcom/android/org/conscrypt/SSLNullSession;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
