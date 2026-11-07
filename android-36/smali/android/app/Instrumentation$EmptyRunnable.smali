.class final Landroid/app/Instrumentation$EmptyRunnable;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyRunnable"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/Instrumentation-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/Instrumentation$EmptyRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 1

    .line 2603
    return-void
.end method
