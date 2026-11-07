.class Lcom/android/org/conscrypt/Platform$NoPreloadHolder;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoPreloadHolder"
.end annotation


# static fields
.field public static final blacklist MAPPER:Lcom/android/org/conscrypt/Platform;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 91
    new-instance v0, Lcom/android/org/conscrypt/Platform;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/Platform;-><init>(Lcom/android/org/conscrypt/Platform-IA;)V

    sput-object v0, Lcom/android/org/conscrypt/Platform$NoPreloadHolder;->MAPPER:Lcom/android/org/conscrypt/Platform;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
