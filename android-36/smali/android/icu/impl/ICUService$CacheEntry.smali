.class final Landroid/icu/impl/ICUService$CacheEntry;
.super Ljava/lang/Object;
.source "ICUService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheEntry"
.end annotation


# instance fields
.field final blacklist actualDescriptor:Ljava/lang/String;

.field final blacklist service:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "actualDescriptor"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/lang/Object;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-object p1, p0, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    .line 537
    iput-object p2, p0, Landroid/icu/impl/ICUService$CacheEntry;->service:Ljava/lang/Object;

    .line 538
    return-void
.end method
