.class public final Lcom/android/server/content/ContentService$ObserverNode;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    }
.end annotation


# static fields
.field public static final DELETE_TYPE:I = 0x2

.field public static final INSERT_TYPE:I = 0x0

.field public static final UPDATE_TYPE:I = 0x1


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/ContentService$ObserverNode;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 990
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@a
    .line 991
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@11
    .line 994
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    #@13
    .line 993
    return-void
.end method

.method private addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "notifyForDescendants"    # Z
    .param p5, "observersLock"    # Ljava/lang/Object;
    .param p6, "uid"    # I
    .param p7, "pid"    # I
    .param p8, "userHandle"    # I

    #@0
    .prologue
    .line 1059
    invoke-direct {p0, p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    #@3
    move-result v1

    #@4
    if-ne p2, v1, :cond_0

    #@6
    .line 1060
    iget-object v8, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@8
    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    #@a
    move-object v1, p0

    #@b
    move-object v2, p3

    #@c
    move/from16 v3, p4

    #@e
    move-object/from16 v4, p5

    #@10
    move/from16 v5, p6

    #@12
    move/from16 v6, p7

    #@14
    move/from16 v7, p8

    #@16
    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    #@19
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 1062
    return-void

    #@1d
    .line 1066
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    #@20
    move-result-object v11

    #@21
    .line 1067
    .local v11, "segment":Ljava/lang/String;
    if-nez v11, :cond_1

    #@23
    .line 1068
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@25
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v3, "Invalid Uri ("

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    const-string/jumbo v3, ") used for observer"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v1

    #@44
    .line 1070
    :cond_1
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@49
    move-result v9

    #@4a
    .line 1071
    .local v9, "N":I
    const/4 v10, 0x0

    #@4b
    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_3

    #@4d
    .line 1072
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v0

    #@53
    check-cast v0, Lcom/android/server/content/ContentService$ObserverNode;

    #@55
    .line 1073
    .local v0, "node":Lcom/android/server/content/ContentService$ObserverNode;
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    #@57
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_2

    #@5d
    .line 1074
    add-int/lit8 v2, p2, 0x1

    #@5f
    move-object v1, p1

    #@60
    move-object v3, p3

    #@61
    move/from16 v4, p4

    #@63
    move-object/from16 v5, p5

    #@65
    move/from16 v6, p6

    #@67
    move/from16 v7, p7

    #@69
    move/from16 v8, p8

    #@6b
    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    #@6e
    .line 1076
    return-void

    #@6f
    .line 1071
    :cond_2
    add-int/lit8 v10, v10, 0x1

    #@71
    goto :goto_0

    #@72
    .line 1081
    .end local v0    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_3
    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode;

    #@74
    invoke-direct {v0, v11}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    #@77
    .line 1082
    .restart local v0    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@79
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7c
    .line 1083
    add-int/lit8 v2, p2, 0x1

    #@7e
    move-object v1, p1

    #@7f
    move-object v3, p3

    #@80
    move/from16 v4, p4

    #@82
    move-object/from16 v5, p5

    #@84
    move/from16 v6, p6

    #@86
    move/from16 v7, p7

    #@88
    move/from16 v8, p8

    #@8a
    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    #@8d
    .line 1057
    return-void
.end method

.method private collectMyObserversLocked(ZLandroid/database/IContentObserver;ZILjava/util/ArrayList;)V
    .locals 8
    .param p1, "leaf"    # Z
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "targetUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/database/IContentObserver;",
            "ZI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p5, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    const/4 v7, -0x1

    #@1
    .line 1119
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .line 1120
    .local v0, "N":I
    if-nez p2, :cond_4

    #@9
    const/4 v3, 0x0

    #@a
    .line 1121
    :goto_0
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_7

    #@d
    .line 1122
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    #@15
    .line 1126
    .local v1, "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v5, v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    #@17
    invoke-interface {v5}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v5

    #@1b
    if-ne v5, v3, :cond_5

    #@1d
    const/4 v4, 0x1

    #@1e
    .line 1127
    .local v4, "selfChange":Z
    :goto_2
    if-eqz v4, :cond_0

    #@20
    if-eqz p3, :cond_3

    #@22
    .line 1132
    :cond_0
    if-eq p4, v7, :cond_1

    #@24
    .line 1133
    invoke-static {v1}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->-get0(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    #@27
    move-result v5

    #@28
    if-ne v5, v7, :cond_6

    #@2a
    .line 1136
    :cond_1
    :goto_3
    if-nez p1, :cond_2

    #@2c
    if-nez p1, :cond_3

    #@2e
    iget-boolean v5, v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    #@30
    if-eqz v5, :cond_3

    #@32
    .line 1137
    :cond_2
    new-instance v5, Lcom/android/server/content/ContentService$ObserverCall;

    #@34
    iget-object v6, v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    #@36
    invoke-direct {v5, p0, v6, v4}, Lcom/android/server/content/ContentService$ObserverCall;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;Z)V

    #@39
    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3c
    .line 1121
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 1120
    .end local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .end local v2    # "i":I
    .end local v4    # "selfChange":Z
    :cond_4
    invoke-interface {p2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@42
    move-result-object v3

    #@43
    .local v3, "observerBinder":Landroid/os/IBinder;
    goto :goto_0

    #@44
    .line 1126
    .end local v3    # "observerBinder":Landroid/os/IBinder;
    .restart local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .restart local v2    # "i":I
    :cond_5
    const/4 v4, 0x0

    #@45
    .restart local v4    # "selfChange":Z
    goto :goto_2

    #@46
    .line 1134
    :cond_6
    invoke-static {v1}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->-get0(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    #@49
    move-result v5

    #@4a
    if-ne p4, v5, :cond_3

    #@4c
    goto :goto_3

    #@4d
    .line 1118
    .end local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .end local v4    # "selfChange":Z
    :cond_7
    return-void
.end method

.method private countUriSegments(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1041
    if-nez p1, :cond_0

    #@2
    .line 1042
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 1044
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@b
    move-result v0

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    return v0
.end method

.method private getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1029
    if-eqz p1, :cond_1

    #@3
    .line 1030
    if-nez p2, :cond_0

    #@5
    .line 1031
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 1033
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    add-int/lit8 v1, p2, -0x1

    #@10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    return-object v0

    #@17
    .line 1036
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "notifyForDescendants"    # Z
    .param p4, "observersLock"    # Ljava/lang/Object;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "userHandle"    # I

    #@0
    .prologue
    .line 1051
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v3, p2

    #@4
    move v4, p3

    #@5
    move-object v5, p4

    #@6
    move v6, p5

    #@7
    move v7, p6

    #@8
    move/from16 v8, p7

    #@a
    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    #@d
    .line 1050
    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZILjava/util/ArrayList;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "observerWantsSelfNotifications"    # Z
    .param p5, "targetUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/database/IContentObserver;",
            "ZI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1149
    .local p6, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    const/4 v9, 0x0

    #@1
    .line 1150
    .local v9, "segment":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    #@4
    move-result v10

    #@5
    .line 1151
    .local v10, "segmentCount":I
    if-lt p2, v10, :cond_3

    #@7
    .line 1153
    const/4 v1, 0x1

    #@8
    move-object v0, p0

    #@9
    move-object v2, p3

    #@a
    move v3, p4

    #@b
    move/from16 v4, p5

    #@d
    move-object/from16 v5, p6

    #@f
    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZILjava/util/ArrayList;)V

    #@12
    .line 1162
    .end local v9    # "segment":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v7

    #@18
    .line 1163
    .local v7, "N":I
    const/4 v8, 0x0

    #@19
    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_2

    #@1b
    .line 1164
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/server/content/ContentService$ObserverNode;

    #@23
    .line 1165
    .local v0, "node":Lcom/android/server/content/ContentService$ObserverNode;
    if-eqz v9, :cond_1

    #@25
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    #@27
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_4

    #@2d
    .line 1167
    :cond_1
    add-int/lit8 v2, p2, 0x1

    #@2f
    move-object v1, p1

    #@30
    move-object v3, p3

    #@31
    move v4, p4

    #@32
    move/from16 v5, p5

    #@34
    move-object/from16 v6, p6

    #@36
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZILjava/util/ArrayList;)V

    #@39
    .line 1169
    if-eqz v9, :cond_4

    #@3b
    .line 1148
    .end local v0    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_2
    return-void

    #@3c
    .line 1155
    .end local v7    # "N":I
    .end local v8    # "i":I
    .restart local v9    # "segment":Ljava/lang/String;
    :cond_3
    if-ge p2, v10, :cond_0

    #@3e
    .line 1156
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    #@41
    move-result-object v9

    #@42
    .line 1158
    .local v9, "segment":Ljava/lang/String;
    const/4 v1, 0x0

    #@43
    move-object v0, p0

    #@44
    move-object v2, p3

    #@45
    move v3, p4

    #@46
    move/from16 v4, p5

    #@48
    move-object/from16 v5, p6

    #@4a
    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZILjava/util/ArrayList;)V

    #@4d
    goto :goto_0

    #@4e
    .line 1163
    .end local v9    # "segment":Ljava/lang/String;
    .restart local v0    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    .restart local v7    # "N":I
    .restart local v8    # "i":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@50
    goto :goto_1
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "prefix"    # Ljava/lang/String;
    .param p6, "counts"    # [I
    .param p7, "pidCounts"    # Landroid/util/SparseIntArray;

    #@0
    .prologue
    .line 999
    const/4 v4, 0x0

    #@1
    .line 1000
    .local v4, "innerName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_1

    #@9
    .line 1001
    const-string/jumbo v0, ""

    #@c
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1002
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    #@14
    .line 1006
    .local v4, "innerName":Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    #@15
    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v0

    #@1b
    if-ge v8, v0, :cond_1

    #@1d
    .line 1007
    const/4 v0, 0x1

    #@1e
    aget v1, p6, v0

    #@20
    add-int/lit8 v1, v1, 0x1

    #@22
    aput v1, p6, v0

    #@24
    .line 1008
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    #@2c
    move-object v1, p1

    #@2d
    move-object v2, p2

    #@2e
    move-object v3, p3

    #@2f
    move-object v5, p5

    #@30
    move-object/from16 v6, p7

    #@32
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    #@35
    .line 1006
    add-int/lit8 v8, v8, 0x1

    #@37
    goto :goto_1

    #@38
    .line 1004
    .end local v8    # "i":I
    .local v4, "innerName":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    const-string/jumbo v1, "/"

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    .local v4, "innerName":Ljava/lang/String;
    goto :goto_0

    #@53
    .line 1012
    .end local v4    # "innerName":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@58
    move-result v0

    #@59
    if-lez v0, :cond_4

    #@5b
    .line 1013
    if-nez v4, :cond_2

    #@5d
    .line 1014
    const-string/jumbo v0, ""

    #@60
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v0

    #@64
    if-eqz v0, :cond_3

    #@66
    .line 1015
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    #@68
    .line 1020
    :cond_2
    :goto_2
    const/4 v8, 0x0

    #@69
    .restart local v8    # "i":I
    :goto_3
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@6b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6e
    move-result v0

    #@6f
    if-ge v8, v0, :cond_4

    #@71
    .line 1021
    const/4 v0, 0x0

    #@72
    aget v1, p6, v0

    #@74
    add-int/lit8 v1, v1, 0x1

    #@76
    aput v1, p6, v0

    #@78
    .line 1022
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@7a
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7d
    move-result-object v0

    #@7e
    check-cast v0, Lcom/android/server/content/ContentService$ObserverNode;

    #@80
    move-object v1, p1

    #@81
    move-object v2, p2

    #@82
    move-object v3, p3

    #@83
    move-object v5, p5

    #@84
    move-object v6, p6

    #@85
    move-object/from16 v7, p7

    #@87
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    #@8a
    .line 1020
    add-int/lit8 v8, v8, 0x1

    #@8c
    goto :goto_3

    #@8d
    .line 1017
    .end local v8    # "i":I
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    const-string/jumbo v1, "/"

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v4

    #@a7
    .restart local v4    # "innerName":Ljava/lang/String;
    goto :goto_2

    #@a8
    .line 998
    .end local v4    # "innerName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public removeObserverLocked(Landroid/database/IContentObserver;)Z
    .locals 7
    .param p1, "observer"    # Landroid/database/IContentObserver;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1088
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v4

    #@7
    .line 1089
    .local v4, "size":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    #@a
    .line 1090
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v5

    #@10
    check-cast v5, Lcom/android/server/content/ContentService$ObserverNode;

    #@12
    invoke-virtual {v5, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    #@15
    move-result v0

    #@16
    .line 1091
    .local v0, "empty":Z
    if-eqz v0, :cond_0

    #@18
    .line 1092
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1d
    .line 1093
    add-int/lit8 v2, v2, -0x1

    #@1f
    .line 1094
    add-int/lit8 v4, v4, -0x1

    #@21
    .line 1089
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1098
    .end local v0    # "empty":Z
    :cond_1
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@27
    move-result-object v3

    #@28
    .line 1099
    .local v3, "observerBinder":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v4

    #@2e
    .line 1100
    const/4 v2, 0x0

    #@2f
    :goto_1
    if-ge v2, v4, :cond_2

    #@31
    .line 1101
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v1

    #@37
    check-cast v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    #@39
    .line 1102
    .local v1, "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v5, v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    #@3b
    invoke-interface {v5}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@3e
    move-result-object v5

    #@3f
    if-ne v5, v3, :cond_3

    #@41
    .line 1103
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@43
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@46
    .line 1105
    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@49
    .line 1110
    .end local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_2
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@4b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@4e
    move-result v5

    #@4f
    if-nez v5, :cond_4

    #@51
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@56
    move-result v5

    #@57
    if-nez v5, :cond_4

    #@59
    .line 1111
    const/4 v5, 0x1

    #@5a
    return v5

    #@5b
    .line 1100
    .restart local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 1113
    .end local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_4
    return v6
.end method
