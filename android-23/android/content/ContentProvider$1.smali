.class Landroid/content/ContentProvider$1;
.super Landroid/os/AsyncTask;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ContentProvider;

.field final synthetic val$args:Ljava/lang/Object;

.field final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field final synthetic val$func:Landroid/content/ContentProvider$PipeDataWriter;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$opts:Landroid/os/Bundle;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;Landroid/content/ContentProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/ContentProvider;
    .param p3, "val$fds"    # [Landroid/os/ParcelFileDescriptor;
    .param p4, "val$uri"    # Landroid/net/Uri;
    .param p5, "val$mimeType"    # Ljava/lang/String;
    .param p6, "val$opts"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1668
    .local p2, "val$func":Landroid/content/ContentProvider$PipeDataWriter;, "Landroid/content/ContentProvider$PipeDataWriter<TT;>;"
    .local p7, "val$args":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Landroid/content/ContentProvider$1;->this$0:Landroid/content/ContentProvider;

    #@2
    iput-object p2, p0, Landroid/content/ContentProvider$1;->val$func:Landroid/content/ContentProvider$PipeDataWriter;

    #@4
    iput-object p3, p0, Landroid/content/ContentProvider$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    #@6
    iput-object p4, p0, Landroid/content/ContentProvider$1;->val$uri:Landroid/net/Uri;

    #@8
    iput-object p5, p0, Landroid/content/ContentProvider$1;->val$mimeType:Ljava/lang/String;

    #@a
    iput-object p6, p0, Landroid/content/ContentProvider$1;->val$opts:Landroid/os/Bundle;

    #@c
    iput-object p7, p0, Landroid/content/ContentProvider$1;->val$args:Ljava/lang/Object;

    #@e
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@11
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1671
    iget-object v0, p0, Landroid/content/ContentProvider$1;->val$func:Landroid/content/ContentProvider$PipeDataWriter;

    #@3
    iget-object v1, p0, Landroid/content/ContentProvider$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    #@5
    aget-object v1, v1, v2

    #@7
    iget-object v2, p0, Landroid/content/ContentProvider$1;->val$uri:Landroid/net/Uri;

    #@9
    iget-object v3, p0, Landroid/content/ContentProvider$1;->val$mimeType:Ljava/lang/String;

    #@b
    iget-object v4, p0, Landroid/content/ContentProvider$1;->val$opts:Landroid/os/Bundle;

    #@d
    iget-object v5, p0, Landroid/content/ContentProvider$1;->val$args:Ljava/lang/Object;

    #@f
    invoke-interface/range {v0 .. v5}, Landroid/content/ContentProvider$PipeDataWriter;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    #@12
    .line 1673
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    #@14
    const/4 v1, 0x1

    #@15
    aget-object v0, v0, v1

    #@17
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1677
    :goto_0
    const/4 v0, 0x0

    #@1b
    return-object v0

    #@1c
    .line 1674
    :catch_0
    move-exception v6

    #@1d
    .line 1675
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "ContentProvider"

    #@20
    const-string/jumbo v1, "Failure closing pipe"

    #@23
    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0
.end method
