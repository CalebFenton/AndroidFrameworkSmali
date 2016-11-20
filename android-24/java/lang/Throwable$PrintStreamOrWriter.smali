.class abstract Ljava/lang/Throwable$PrintStreamOrWriter;
.super Ljava/lang/Object;
.source "Throwable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Throwable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PrintStreamOrWriter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Throwable$PrintStreamOrWriter;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Throwable$PrintStreamOrWriter;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method abstract lock()Ljava/lang/Object;
.end method

.method abstract println(Ljava/lang/Object;)V
.end method
