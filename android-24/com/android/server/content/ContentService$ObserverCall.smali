.class public final Lcom/android/server/content/ContentService$ObserverCall;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverCall"
.end annotation


# instance fields
.field final mNode:Lcom/android/server/content/ContentService$ObserverNode;

.field final mObserver:Landroid/database/IContentObserver;

.field final mObserverUserId:I

.field final mSelfChange:Z


# direct methods
.method constructor <init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZI)V
    .locals 0
    .param p1, "node"    # Lcom/android/server/content/ContentService$ObserverNode;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "selfChange"    # Z
    .param p4, "observerUserId"    # I

    #@0
    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 464
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverCall;->mNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@5
    .line 465
    iput-object p2, p0, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    #@7
    .line 466
    iput-boolean p3, p0, Lcom/android/server/content/ContentService$ObserverCall;->mSelfChange:Z

    #@9
    .line 467
    iput p4, p0, Lcom/android/server/content/ContentService$ObserverCall;->mObserverUserId:I

    #@b
    .line 463
    return-void
.end method
