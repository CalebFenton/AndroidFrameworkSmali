.class final Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
.super Ljava/lang/Object;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService$UserHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProviderRecord"
.end annotation


# instance fields
.field private mDescriptor:Landroid/media/RemoteDisplayState;

.field private final mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

.field private final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUniquePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@0
    .prologue
    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1082
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    #@a
    .line 1086
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@c
    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v1, ":"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    #@26
    .line 1085
    return-void
.end method

.method private assignRouteUniqueId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "descriptorId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method private findRouteByDescriptorId(Ljava/lang/String;)I
    .locals 4
    .param p1, "descriptorId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1169
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 1170
    .local v2, "routeCount":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@9
    .line 1171
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@11
    .line 1172
    .local v1, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getDescriptorId()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 1173
    return v0

    #@1c
    .line 1170
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1176
    .end local v1    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_1
    const/4 v3, -0x1

    #@20
    return v3
.end method


# virtual methods
.method public appendClientState(Landroid/media/MediaRouterClientState;)V
    .locals 4
    .param p1, "state"    # Landroid/media/MediaRouterClientState;

    #@0
    .prologue
    .line 1151
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 1152
    .local v1, "routeCount":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@9
    .line 1153
    iget-object v3, p1, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    #@b
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@13
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getInfo()Landroid/media/MediaRouterClientState$RouteInfo;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    .line 1152
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1150
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1180
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14
    .line 1182
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    const-string/jumbo v4, "  "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 1183
    .local v1, "indent":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@2a
    invoke-virtual {v3, p1, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@2d
    .line 1185
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@32
    move-result v2

    #@33
    .line 1186
    .local v2, "routeCount":I
    if-eqz v2, :cond_0

    #@35
    .line 1187
    const/4 v0, 0x0

    #@36
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@38
    .line 1188
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v3

    #@3e
    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@40
    invoke-virtual {v3, p1, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@43
    .line 1187
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_0

    #@46
    .line 1191
    .end local v0    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    const-string/jumbo v4, "<no routes>"

    #@52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5d
    .line 1179
    :cond_1
    return-void
.end method

.method public findRouteByUniqueId(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .locals 4
    .param p1, "uniqueId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1158
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 1159
    .local v2, "routeCount":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@9
    .line 1160
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@11
    .line 1161
    .local v1, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 1162
    return-object v1

    #@1c
    .line 1159
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1165
    .end local v1    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_1
    const/4 v3, 0x0

    #@20
    return-object v3
.end method

.method public getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;
    .locals 1

    #@0
    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@2
    return-object v0
.end method

.method public getUniquePrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Provider "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@e
    invoke-virtual {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public updateDescriptor(Landroid/media/RemoteDisplayState;)Z
    .locals 14
    .param p1, "descriptor"    # Landroid/media/RemoteDisplayState;

    #@0
    .prologue
    .line 1099
    const/4 v0, 0x0

    #@1
    .line 1100
    .local v0, "changed":Z
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mDescriptor:Landroid/media/RemoteDisplayState;

    #@3
    if-eq v11, p1, :cond_4

    #@5
    .line 1101
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mDescriptor:Landroid/media/RemoteDisplayState;

    #@7
    .line 1105
    const/4 v8, 0x0

    #@8
    .line 1106
    .local v8, "targetIndex":I
    if-eqz p1, :cond_3

    #@a
    .line 1107
    invoke-virtual {p1}, Landroid/media/RemoteDisplayState;->isValid()Z

    #@d
    move-result v11

    #@e
    if-eqz v11, :cond_2

    #@10
    .line 1108
    iget-object v6, p1, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    #@12
    .line 1109
    .local v6, "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/RemoteDisplayState$RemoteDisplayInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@15
    move-result v4

    #@16
    .line 1110
    .local v4, "routeCount":I
    const/4 v2, 0x0

    #@17
    .local v2, "i":I
    move v9, v8

    #@18
    .end local v0    # "changed":Z
    .end local v8    # "targetIndex":I
    .local v9, "targetIndex":I
    :goto_0
    if-ge v2, v4, :cond_5

    #@1a
    .line 1112
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v5

    #@1e
    check-cast v5, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@20
    .line 1113
    .local v5, "routeDescriptor":Landroid/media/RemoteDisplayState$RemoteDisplayInfo;
    iget-object v1, v5, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    #@22
    .line 1114
    .local v1, "descriptorId":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->findRouteByDescriptorId(Ljava/lang/String;)I

    #@25
    move-result v7

    #@26
    .line 1115
    .local v7, "sourceIndex":I
    if-gez v7, :cond_0

    #@28
    .line 1117
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->assignRouteUniqueId(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v10

    #@2c
    .line 1119
    .local v10, "uniqueId":Ljava/lang/String;
    new-instance v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@2e
    invoke-direct {v3, p0, v1, v10}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;-><init>(Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;Ljava/lang/String;Ljava/lang/String;)V

    #@31
    .line 1120
    .local v3, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    #@33
    add-int/lit8 v8, v9, 0x1

    #@35
    .end local v9    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    invoke-virtual {v11, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@38
    .line 1121
    invoke-virtual {v3, v5}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    #@3b
    .line 1122
    const/4 v0, 0x1

    #@3c
    .line 1110
    .end local v3    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .end local v10    # "uniqueId":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@3e
    move v9, v8

    #@3f
    .end local v8    # "targetIndex":I
    .restart local v9    # "targetIndex":I
    goto :goto_0

    #@40
    .line 1123
    :cond_0
    if-ge v7, v9, :cond_1

    #@42
    .line 1125
    const-string/jumbo v11, "MediaRouterService"

    #@45
    new-instance v12, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v13, "Ignoring route descriptor with duplicate id: "

    #@4d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v12

    #@51
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v12

    #@55
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v12

    #@59
    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    move v8, v9

    #@5d
    .end local v9    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    goto :goto_1

    #@5e
    .line 1129
    .end local v8    # "targetIndex":I
    .restart local v9    # "targetIndex":I
    :cond_1
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    #@60
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v3

    #@64
    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@66
    .line 1130
    .restart local v3    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    #@68
    add-int/lit8 v8, v9, 0x1

    #@6a
    .end local v9    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    invoke-static {v11, v7, v9}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    #@6d
    .line 1131
    invoke-virtual {v3, v5}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    #@70
    move-result v11

    #@71
    or-int/2addr v0, v11

    #@72
    .local v0, "changed":Z
    goto :goto_1

    #@73
    .line 1135
    .end local v1    # "descriptorId":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .end local v4    # "routeCount":I
    .end local v5    # "routeDescriptor":Landroid/media/RemoteDisplayState$RemoteDisplayInfo;
    .end local v6    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/RemoteDisplayState$RemoteDisplayInfo;>;"
    .end local v7    # "sourceIndex":I
    .local v0, "changed":Z
    :cond_2
    const-string/jumbo v11, "MediaRouterService"

    #@76
    new-instance v12, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v13, "Ignoring invalid descriptor from media route provider: "

    #@7e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v12

    #@82
    .line 1136
    iget-object v13, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@84
    invoke-virtual {v13}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    #@87
    move-result-object v13

    #@88
    .line 1135
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v12

    #@8c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v12

    #@90
    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@93
    .line 1141
    .end local v0    # "changed":Z
    :cond_3
    :goto_2
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    #@95
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@98
    move-result v11

    #@99
    add-int/lit8 v2, v11, -0x1

    #@9b
    .restart local v2    # "i":I
    :goto_3
    if-lt v2, v8, :cond_4

    #@9d
    .line 1142
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    #@9f
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@a2
    move-result-object v3

    #@a3
    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@a5
    .line 1143
    .restart local v3    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    const/4 v11, 0x0

    #@a6
    invoke-virtual {v3, v11}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    #@a9
    .line 1144
    const/4 v0, 0x1

    #@aa
    .line 1141
    .restart local v0    # "changed":Z
    add-int/lit8 v2, v2, -0x1

    #@ac
    goto :goto_3

    #@ad
    .line 1147
    .end local v0    # "changed":Z
    .end local v2    # "i":I
    .end local v3    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .end local v8    # "targetIndex":I
    :cond_4
    return v0

    #@ae
    .restart local v2    # "i":I
    .restart local v4    # "routeCount":I
    .restart local v6    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/RemoteDisplayState$RemoteDisplayInfo;>;"
    .restart local v9    # "targetIndex":I
    :cond_5
    move v8, v9

    #@af
    .end local v9    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    goto :goto_2
.end method
