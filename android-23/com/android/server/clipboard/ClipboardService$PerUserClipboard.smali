.class Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
.super Ljava/lang/Object;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboard/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerUserClipboard"
.end annotation


# instance fields
.field final activePermissionOwners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field primaryClip:Landroid/content/ClipData;

.field final primaryClipListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/IOnPrimaryClipChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;

.field final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/clipboard/ClipboardService;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/clipboard/ClipboardService;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->this$0:Lcom/android/server/clipboard/ClipboardService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 80
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@7
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@a
    .line 79
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    #@c
    .line 85
    new-instance v0, Ljava/util/HashSet;

    #@e
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@11
    .line 84
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    #@13
    .line 88
    iput p2, p0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->userId:I

    #@15
    .line 87
    return-void
.end method
