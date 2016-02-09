.class Lcom/android/server/net/IpConfigStore$1;
.super Ljava/lang/Object;
.source "IpConfigStore.java"

# interfaces
.implements Lcom/android/server/net/DelayedDiskWrite$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/IpConfigStore;->writeIpAndProxyConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/IpConfigStore;

.field final synthetic val$networks:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/android/server/net/IpConfigStore;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/IpConfigStore;

    #@0
    .prologue
    .line 160
    .local p2, "val$networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    iput-object p1, p0, Lcom/android/server/net/IpConfigStore$1;->this$0:Lcom/android/server/net/IpConfigStore;

    #@2
    iput-object p2, p0, Lcom/android/server/net/IpConfigStore$1;->val$networks:Landroid/util/SparseArray;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onWriteCalled(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    const/4 v1, 0x2

    #@1
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@4
    .line 163
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/net/IpConfigStore$1;->val$networks:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v1

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 164
    iget-object v2, p0, Lcom/android/server/net/IpConfigStore$1;->this$0:Lcom/android/server/net/IpConfigStore;

    #@f
    iget-object v1, p0, Lcom/android/server/net/IpConfigStore$1;->val$networks:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@14
    move-result v3

    #@15
    iget-object v1, p0, Lcom/android/server/net/IpConfigStore$1;->val$networks:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/net/IpConfiguration;

    #@1d
    invoke-static {v2, p1, v3, v1}, Lcom/android/server/net/IpConfigStore;->-wrap0(Lcom/android/server/net/IpConfigStore;Ljava/io/DataOutputStream;ILandroid/net/IpConfiguration;)Z

    #@20
    .line 163
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 161
    :cond_0
    return-void
.end method
