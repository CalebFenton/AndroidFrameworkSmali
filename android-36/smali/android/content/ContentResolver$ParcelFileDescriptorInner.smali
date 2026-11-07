.class final Landroid/content/ContentResolver$ParcelFileDescriptorInner;
.super Landroid/os/ParcelFileDescriptor;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ParcelFileDescriptorInner"
.end annotation


# instance fields
.field private final greylist-max-o mContentProvider:Landroid/content/IContentProvider;

.field private final greylist-max-o mProviderReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic blacklist this$0:Landroid/content/ContentResolver;


# direct methods
.method constructor blacklist <init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V
    .registers 4
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "icp"    # Landroid/content/IContentProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 3913
    iput-object p1, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->this$0:Landroid/content/ContentResolver;

    .line 3914
    invoke-direct {p0, p2}, Landroid/os/ParcelFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 3911
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mProviderReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3915
    iput-object p3, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mContentProvider:Landroid/content/IContentProvider;

    .line 3916
    return-void
.end method


# virtual methods
.method public greylist-max-o releaseResources()V
    .registers 4

    .line 3920
    iget-object v0, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mProviderReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3921
    iget-object v0, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->this$0:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 3923
    :cond_11
    return-void
.end method
