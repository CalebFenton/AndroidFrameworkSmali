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
.field public static final MAPPER:Lcom/android/org/conscrypt/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 45
    new-instance v0, Lcom/android/org/conscrypt/Platform;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/Platform;-><init>(Lcom/android/org/conscrypt/Platform;)V

    #@6
    sput-object v0, Lcom/android/org/conscrypt/Platform$NoPreloadHolder;->MAPPER:Lcom/android/org/conscrypt/Platform;

    #@8
    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
