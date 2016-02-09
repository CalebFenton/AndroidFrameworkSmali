.class public Landroid/renderscript/FileA3D$IndexEntry;
.super Ljava/lang/Object;
.source "FileA3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/FileA3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexEntry"
.end annotation


# static fields
.field private static synthetic -android_renderscript_FileA3D$EntryTypeSwitchesValues:[I


# instance fields
.field mEntryType:Landroid/renderscript/FileA3D$EntryType;

.field mID:J

.field mIndex:I

.field mLoadedObj:Landroid/renderscript/BaseObj;

.field mName:Ljava/lang/String;

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method private static synthetic -getandroid_renderscript_FileA3D$EntryTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/renderscript/FileA3D$IndexEntry;->-android_renderscript_FileA3D$EntryTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/renderscript/FileA3D$IndexEntry;->-android_renderscript_FileA3D$EntryTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/renderscript/FileA3D$EntryType;->values()[Landroid/renderscript/FileA3D$EntryType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/renderscript/FileA3D$EntryType;->MESH:Landroid/renderscript/FileA3D$EntryType;

    #@10
    invoke-virtual {v1}, Landroid/renderscript/FileA3D$EntryType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/renderscript/FileA3D$EntryType;->UNKNOWN:Landroid/renderscript/FileA3D$EntryType;

    #@19
    invoke-virtual {v1}, Landroid/renderscript/FileA3D$EntryType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    :goto_1
    sput-object v0, Landroid/renderscript/FileA3D$IndexEntry;->-android_renderscript_FileA3D$EntryTypeSwitchesValues:[I

    #@22
    return-object v0

    #@23
    :catch_0
    move-exception v1

    #@24
    goto :goto_1

    #@25
    :catch_1
    move-exception v1

    #@26
    goto :goto_0
.end method

.method constructor <init>(Landroid/renderscript/RenderScript;IJLjava/lang/String;Landroid/renderscript/FileA3D$EntryType;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "index"    # I
    .param p3, "id"    # J
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "type"    # Landroid/renderscript/FileA3D$EntryType;

    #@0
    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 158
    iput-object p1, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    #@5
    .line 159
    iput p2, p0, Landroid/renderscript/FileA3D$IndexEntry;->mIndex:I

    #@7
    .line 160
    iput-wide p3, p0, Landroid/renderscript/FileA3D$IndexEntry;->mID:J

    #@9
    .line 161
    iput-object p5, p0, Landroid/renderscript/FileA3D$IndexEntry;->mName:Ljava/lang/String;

    #@b
    .line 162
    iput-object p6, p0, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    #@d
    .line 163
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    #@10
    .line 157
    return-void
.end method

.method static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/FileA3D$IndexEntry;)Landroid/renderscript/BaseObj;
    .locals 7
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "entry"    # Landroid/renderscript/FileA3D$IndexEntry;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const-class v3, Landroid/renderscript/FileA3D$IndexEntry;

    #@3
    monitor-enter v3

    #@4
    .line 130
    :try_start_0
    iget-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 131
    iget-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v3

    #@b
    return-object v2

    #@c
    .line 135
    :cond_0
    :try_start_1
    iget-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    #@e
    sget-object v4, Landroid/renderscript/FileA3D$EntryType;->UNKNOWN:Landroid/renderscript/FileA3D$EntryType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    if-ne v2, v4, :cond_1

    #@12
    monitor-exit v3

    #@13
    .line 136
    return-object v6

    #@14
    .line 139
    :cond_1
    :try_start_2
    iget-wide v4, p1, Landroid/renderscript/FileA3D$IndexEntry;->mID:J

    #@16
    iget v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mIndex:I

    #@18
    invoke-virtual {p0, v4, v5, v2}, Landroid/renderscript/RenderScript;->nFileA3DGetEntryByIndex(JI)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    move-result-wide v0

    #@1c
    .line 140
    .local v0, "objectID":J
    const-wide/16 v4, 0x0

    #@1e
    cmp-long v2, v0, v4

    #@20
    if-nez v2, :cond_2

    #@22
    monitor-exit v3

    #@23
    .line 141
    return-object v6

    #@24
    .line 144
    :cond_2
    :try_start_3
    invoke-static {}, Landroid/renderscript/FileA3D$IndexEntry;->-getandroid_renderscript_FileA3D$EntryTypeSwitchesValues()[I

    #@27
    move-result-object v2

    #@28
    iget-object v4, p1, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    #@2a
    invoke-virtual {v4}, Landroid/renderscript/FileA3D$EntryType;->ordinal()I

    #@2d
    move-result v4

    #@2e
    aget v2, v2, v4

    #@30
    packed-switch v2, :pswitch_data_0

    #@33
    .line 150
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@35
    const-string/jumbo v4, "Unrecognized object type in file."

    #@38
    invoke-direct {v2, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3c
    .end local v0    # "objectID":J
    :catchall_0
    move-exception v2

    #@3d
    monitor-exit v3

    #@3e
    throw v2

    #@3f
    .line 146
    .restart local v0    # "objectID":J
    :pswitch_0
    :try_start_4
    new-instance v2, Landroid/renderscript/Mesh;

    #@41
    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/Mesh;-><init>(JLandroid/renderscript/RenderScript;)V

    #@44
    iput-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    #@46
    .line 153
    iget-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    #@48
    invoke-virtual {v2}, Landroid/renderscript/BaseObj;->updateFromNative()V

    #@4b
    .line 154
    iget-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4d
    monitor-exit v3

    #@4e
    return-object v2

    #@4f
    .line 144
    nop

    #@50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getEntryType()Landroid/renderscript/FileA3D$EntryType;
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    #@2
    return-object v0
.end method

.method public getMesh()Landroid/renderscript/Mesh;
    .locals 1

    #@0
    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/renderscript/FileA3D$IndexEntry;->getObject()Landroid/renderscript/BaseObj;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/renderscript/Mesh;

    #@6
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getObject()Landroid/renderscript/BaseObj;
    .locals 2

    #@0
    .prologue
    .line 113
    iget-object v1, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 114
    iget-object v1, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-static {v1, p0}, Landroid/renderscript/FileA3D$IndexEntry;->internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/FileA3D$IndexEntry;)Landroid/renderscript/BaseObj;

    #@a
    move-result-object v0

    #@b
    .line 115
    .local v0, "obj":Landroid/renderscript/BaseObj;
    return-object v0
.end method
