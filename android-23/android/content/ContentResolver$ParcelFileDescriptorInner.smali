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
.field private final mContentProvider:Landroid/content/IContentProvider;

.field private mProviderReleased:Z

.field final synthetic this$0:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/ContentResolver;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "icp"    # Landroid/content/IContentProvider;

    #@0
    .prologue
    .line 2544
    iput-object p1, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->this$0:Landroid/content/ContentResolver;

    #@2
    .line 2545
    invoke-direct {p0, p2}, Landroid/os/ParcelFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@5
    .line 2546
    iput-object p3, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mContentProvider:Landroid/content/IContentProvider;

    #@7
    .line 2544
    return-void
.end method


# virtual methods
.method public releaseResources()V
    .locals 2

    #@0
    .prologue
    .line 2551
    iget-boolean v0, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mProviderReleased:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2552
    iget-object v0, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->this$0:Landroid/content/ContentResolver;

    #@6
    iget-object v1, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mContentProvider:Landroid/content/IContentProvider;

    #@8
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@b
    .line 2553
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;->mProviderReleased:Z

    #@e
    .line 2550
    :cond_0
    return-void
.end method
