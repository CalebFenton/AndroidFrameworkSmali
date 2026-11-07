.class Landroid/widget/RemoteViews$SetPendingIntentTemplate;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetPendingIntentTemplate"
.end annotation


# instance fields
.field greylist-max-r mPendingIntentTemplate:Landroid/app/PendingIntent;


# direct methods
.method public static synthetic blacklist $r8$lambda$HZunZfjaLDh4Ro7VuCHx2dZp1Is(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->lambda$apply$0(Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "pendingIntentTemplate"    # Landroid/app/PendingIntent;

    .line 1123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1124
    iput p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mViewId:I

    .line 1125
    iput-object p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mPendingIntentTemplate:Landroid/app/PendingIntent;

    .line 1126
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mViewId:I

    .line 1130
    invoke-static {p1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mPendingIntentTemplate:Landroid/app/PendingIntent;

    .line 1131
    return-void
.end method

.method private blacklist findRemoteResponseTag(Landroid/view/View;)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 9
    .param p1, "rootView"    # Landroid/view/View;

    .line 1164
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1166
    :cond_4
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 1167
    .local v1, "viewsToCheck":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/view/View;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1169
    :goto_c
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_41

    .line 1170
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1171
    .local v2, "view":Landroid/view/View;
    const v3, 0x1020308

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 1172
    .local v3, "tag":Ljava/lang/Object;
    instance-of v4, v3, Landroid/widget/RemoteViews$RemoteResponse;

    if-eqz v4, :cond_27

    move-object v0, v3

    check-cast v0, Landroid/widget/RemoteViews$RemoteResponse;

    return-object v0

    .line 1173
    :cond_27
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-nez v4, :cond_2c

    goto :goto_c

    .line 1175
    :cond_2c
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    .line 1176
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_30
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_40

    .line 1177
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1176
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 1179
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "tag":Ljava/lang/Object;
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    .end local v5    # "i":I
    :cond_40
    goto :goto_c

    .line 1181
    :cond_41
    return-object v0
.end method

.method private synthetic blacklist lambda$apply$0(Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p1, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;
    .param p2, "parent"    # Landroid/widget/AdapterView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J

    .line 1148
    invoke-direct {p0, p3}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->findRemoteResponseTag(Landroid/view/View;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v0

    .line 1149
    .local v0, "response":Landroid/widget/RemoteViews$RemoteResponse;
    if-eqz v0, :cond_b

    .line 1150
    iget-object v1, p1, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-static {v0, p3, v1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 1152
    :cond_b
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 8
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 1140
    iget v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1141
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 1144
    :cond_9
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_1f

    .line 1145
    move-object v1, v0

    check-cast v1, Landroid/widget/AdapterView;

    .line 1147
    .local v1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v2, Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 1153
    .local v2, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1154
    iget-object v3, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mPendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setTag(Ljava/lang/Object;)V

    .line 1155
    .end local v1    # "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .end local v2    # "listener":Landroid/widget/AdapterView$OnItemClickListener;
    nop

    .line 1160
    return-void

    .line 1156
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot setPendingIntentTemplate on a view which is notan AdapterView (id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mViewId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 1186
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1134
    iget v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1135
    iget-object v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mPendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 1136
    return-void
.end method
