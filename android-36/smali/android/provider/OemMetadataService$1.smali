.class Landroid/provider/OemMetadataService$1;
.super Landroid/provider/IOemMetadataService$Stub;
.source "OemMetadataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/OemMetadataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/provider/OemMetadataService;


# direct methods
.method constructor blacklist <init>(Landroid/provider/OemMetadataService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/provider/OemMetadataService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 137
    iput-object p1, p0, Landroid/provider/OemMetadataService$1;->this$0:Landroid/provider/OemMetadataService;

    invoke-direct {p0}, Landroid/provider/IOemMetadataService$Stub;-><init>()V

    return-void
.end method

.method private blacklist sendResultForOemCustomData(Ljava/util/Map;Landroid/os/RemoteCallback;)V
    .registers 9
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .line 152
    .local p1, "oemCustomData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_4a

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v1, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    .local v2, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 157
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_27

    .line 160
    :cond_40
    const-string v3, "android.provider.extra.OEM_DATA_KEYS"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 161
    const-string v3, "android.provider.extra.OEM_DATA_VALUES"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 164
    .end local v1    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4a
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 165
    return-void
.end method

.method private blacklist sendResultForSupportedMimeTypes(Ljava/util/Set;Landroid/os/RemoteCallback;)V
    .registers 6
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .line 169
    .local p1, "supportedMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "android.provider.extra.OEM_SUPPORTED_MIME_TYPES"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 174
    :cond_17
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 175
    return-void
.end method


# virtual methods
.method public blacklist getOemCustomData(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .registers 4
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 146
    iget-object v0, p0, Landroid/provider/OemMetadataService$1;->this$0:Landroid/provider/OemMetadataService;

    invoke-virtual {v0, p1}, Landroid/provider/OemMetadataService;->onGetOemCustomData(Landroid/os/ParcelFileDescriptor;)Ljava/util/Map;

    move-result-object v0

    .line 147
    .local v0, "oemCustomData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, p2}, Landroid/provider/OemMetadataService$1;->sendResultForOemCustomData(Ljava/util/Map;Landroid/os/RemoteCallback;)V

    .line 148
    return-void
.end method

.method public blacklist getSupportedMimeTypes(Landroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 140
    iget-object v0, p0, Landroid/provider/OemMetadataService$1;->this$0:Landroid/provider/OemMetadataService;

    invoke-virtual {v0}, Landroid/provider/OemMetadataService;->onGetSupportedMimeTypes()Ljava/util/Set;

    move-result-object v0

    .line 141
    .local v0, "supportedMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, v0, p1}, Landroid/provider/OemMetadataService$1;->sendResultForSupportedMimeTypes(Ljava/util/Set;Landroid/os/RemoteCallback;)V

    .line 142
    return-void
.end method
