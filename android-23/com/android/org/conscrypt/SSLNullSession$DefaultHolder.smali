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
.field public static final NULL_SESSION:Lcom/android/org/conscrypt/SSLNullSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 39
    new-instance v0, Lcom/android/org/conscrypt/SSLNullSession;

    #@2
    invoke-direct {v0}, Lcom/android/org/conscrypt/SSLNullSession;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/conscrypt/SSLNullSession$DefaultHolder;->NULL_SESSION:Lcom/android/org/conscrypt/SSLNullSession;

    #@7
    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
