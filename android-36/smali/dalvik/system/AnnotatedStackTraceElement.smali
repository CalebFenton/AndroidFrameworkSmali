.class public final Ldalvik/system/AnnotatedStackTraceElement;
.super Ljava/lang/Object;
.source "AnnotatedStackTraceElement.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private greylist-max-o blockedOn:Ljava/lang/Object;

.field private greylist-max-o heldLocks:[Ljava/lang/Object;

.field private greylist-max-o stackTraceElement:Ljava/lang/StackTraceElement;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public greylist-max-o test-api getBlockedOn()Ljava/lang/Object;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 91
    iget-object v0, p0, Ldalvik/system/AnnotatedStackTraceElement;->blockedOn:Ljava/lang/Object;

    return-object v0
.end method

.method public greylist-max-o test-api getHeldLocks()[Ljava/lang/Object;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 77
    iget-object v0, p0, Ldalvik/system/AnnotatedStackTraceElement;->heldLocks:[Ljava/lang/Object;

    return-object v0
.end method

.method public greylist-max-o test-api getStackTraceElement()Ljava/lang/StackTraceElement;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 64
    iget-object v0, p0, Ldalvik/system/AnnotatedStackTraceElement;->stackTraceElement:Ljava/lang/StackTraceElement;

    return-object v0
.end method
