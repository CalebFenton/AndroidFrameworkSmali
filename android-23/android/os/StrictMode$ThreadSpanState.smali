.class Landroid/os/StrictMode$ThreadSpanState;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadSpanState"
.end annotation


# instance fields
.field public mActiveHead:Landroid/os/StrictMode$Span;

.field public mActiveSize:I

.field public mFreeListHead:Landroid/os/StrictMode$Span;

.field public mFreeListSize:I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/StrictMode$ThreadSpanState;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/os/StrictMode$ThreadSpanState;-><init>()V

    #@3
    return-void
.end method
