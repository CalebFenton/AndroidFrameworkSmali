.class public Landroid/content/pm/RegisteredServicesCache$Injector;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 938
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$Injector;, "Landroid/content/pm/RegisteredServicesCache$Injector<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$Injector;->mContext:Landroid/content/Context;

    .line 940
    return-void
.end method


# virtual methods
.method public blacklist getBackgroundHandler()Landroid/os/Handler;
    .registers 2

    .line 947
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$Injector;, "Landroid/content/pm/RegisteredServicesCache$Injector<TV;>;"
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 943
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$Injector;, "Landroid/content/pm/RegisteredServicesCache$Injector<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method
