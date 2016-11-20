.class public Landroid/content/res/ResourcesImpl$ThemeImpl;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeImpl"
.end annotation


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mKey:Landroid/content/res/Resources$ThemeKey;

.field private final mTheme:J

.field private mThemeResId:I

.field final synthetic this$0:Landroid/content/res/ResourcesImpl;


# direct methods
.method static synthetic -get0(Landroid/content/res/ResourcesImpl$ThemeImpl;)Landroid/content/res/Resources$ThemeKey;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/content/res/ResourcesImpl;)V
    .locals 2
    .param p1, "this$0"    # Landroid/content/res/ResourcesImpl;

    #@0
    .prologue
    .line 1062
    iput-object p1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->this$0:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1051
    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    #@7
    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    #@a
    iput-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@c
    .line 1060
    const/4 v0, 0x0

    #@d
    iput v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    #@f
    .line 1063
    iget-object v0, p1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    #@11
    iput-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    #@13
    .line 1064
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    #@15
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->createTheme()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    #@1b
    .line 1062
    return-void
.end method


# virtual methods
.method applyStyle(IZ)V
    .locals 4
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    #@0
    .prologue
    .line 1086
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@2
    monitor-enter v1

    #@3
    .line 1087
    :try_start_0
    iget-wide v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    #@5
    invoke-static {v2, v3, p1, p2}, Landroid/content/res/AssetManager;->applyThemeStyle(JIZ)V

    #@8
    .line 1089
    iput p1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    #@a
    .line 1090
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@c
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources$ThemeKey;->append(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 1085
    return-void

    #@11
    .line 1086
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public dump(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1168
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@2
    monitor-enter v1

    #@3
    .line 1169
    :try_start_0
    iget-wide v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    #@5
    invoke-static {v2, v3, p1, p2, p3}, Landroid/content/res/AssetManager;->dumpTheme(JILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 1167
    return-void

    #@a
    .line 1168
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 1069
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@3
    .line 1070
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    #@5
    iget-wide v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    #@7
    invoke-virtual {v0, v2, v3}, Landroid/content/res/AssetManager;->releaseTheme(J)V

    #@a
    .line 1068
    return-void
.end method

.method getAllAttributes()[I
    .locals 2

    #@0
    .prologue
    .line 1156
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    #@2
    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAppliedStyleResId()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->getStyleAttributes(I)[I

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method getAppliedStyleResId()I
    .locals 1

    #@0
    .prologue
    .line 1082
    iget v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    #@2
    return v0
.end method

.method getChangingConfigurations()I
    .locals 6

    #@0
    .prologue
    .line 1160
    iget-object v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@2
    monitor-enter v2

    #@3
    .line 1162
    :try_start_0
    iget-wide v4, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    #@5
    invoke-static {v4, v5}, Landroid/content/res/AssetManager;->getThemeChangingConfigurations(J)I

    #@8
    move-result v0

    #@9
    .line 1163
    .local v0, "nativeChangingConfig":I
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v1

    #@d
    monitor-exit v2

    #@e
    return v1

    #@f
    .line 1160
    .end local v0    # "nativeChangingConfig":I
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v2

    #@11
    throw v1
.end method

.method getKey()Landroid/content/res/Resources$ThemeKey;
    .locals 1

    #@0
    .prologue
    .line 1074
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@2
    return-object v0
.end method

.method getNativeTheme()J
    .locals 2

    #@0
    .prologue
    .line 1078
    iget-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    #@2
    return-wide v0
.end method

.method getTheme()[Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    .line 1174
    iget-object v8, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@2
    monitor-enter v8

    #@3
    .line 1175
    :try_start_0
    iget-object v7, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@5
    iget v0, v7, Landroid/content/res/Resources$ThemeKey;->mCount:I

    #@7
    .line 1176
    .local v0, "N":I
    mul-int/lit8 v7, v0, 0x2

    #@9
    new-array v6, v7, [Ljava/lang/String;

    #@b
    .line 1177
    .local v6, "themes":[Ljava/lang/String;
    const/4 v3, 0x0

    #@c
    .local v3, "i":I
    add-int/lit8 v4, v0, -0x1

    #@e
    .local v4, "j":I
    :goto_0
    array-length v7, v6

    #@f
    if-ge v3, v7, :cond_1

    #@11
    .line 1178
    iget-object v7, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@13
    iget-object v7, v7, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    #@15
    aget v5, v7, v4

    #@17
    .line 1179
    .local v5, "resId":I
    iget-object v7, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@19
    iget-object v7, v7, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    #@1b
    aget-boolean v2, v7, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 1181
    .local v2, "forced":Z
    :try_start_1
    iget-object v7, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->this$0:Landroid/content/res/ResourcesImpl;

    #@1f
    invoke-virtual {v7, v5}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    #@22
    move-result-object v7

    #@23
    aput-object v7, v6, v3
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .line 1185
    :goto_1
    add-int/lit8 v9, v3, 0x1

    #@27
    if-eqz v2, :cond_0

    #@29
    :try_start_2
    const-string/jumbo v7, "forced"

    #@2c
    :goto_2
    aput-object v7, v6, v9

    #@2e
    .line 1177
    add-int/lit8 v3, v3, 0x2

    #@30
    add-int/lit8 v4, v4, -0x1

    #@32
    goto :goto_0

    #@33
    .line 1182
    :catch_0
    move-exception v1

    #@34
    .line 1183
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@37
    move-result-object v7

    #@38
    aput-object v7, v6, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    goto :goto_1

    #@3b
    .line 1174
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "forced":Z
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "resId":I
    .end local v6    # "themes":[Ljava/lang/String;
    :catchall_0
    move-exception v7

    #@3c
    monitor-exit v8

    #@3d
    throw v7

    #@3e
    .line 1185
    .restart local v0    # "N":I
    .restart local v2    # "forced":Z
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "resId":I
    .restart local v6    # "themes":[Ljava/lang/String;
    :cond_0
    :try_start_3
    const-string/jumbo v7, "not forced"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@41
    goto :goto_2

    #@42
    .end local v2    # "forced":Z
    .end local v5    # "resId":I
    :cond_1
    monitor-exit v8

    #@43
    .line 1187
    return-object v6
.end method

.method obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 15
    .param p1, "wrapper"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    #@0
    .prologue
    .line 1111
    iget-object v14, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@2
    monitor-enter v14

    #@3
    .line 1112
    :try_start_0
    move-object/from16 v0, p3

    #@5
    array-length v12, v0

    #@6
    .line 1113
    .local v12, "len":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v2

    #@a
    invoke-static {v2, v12}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    #@d
    move-result-object v11

    #@e
    .line 1119
    .local v11, "array":Landroid/content/res/TypedArray;
    move-object/from16 v0, p2

    #@10
    check-cast v0, Landroid/content/res/XmlBlock$Parser;

    #@12
    move-object v13, v0

    #@13
    .line 1120
    .local v13, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-wide v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    #@15
    .line 1121
    if-eqz v13, :cond_0

    #@17
    iget-wide v6, v13, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@19
    .line 1122
    :goto_0
    iget-object v9, v11, Landroid/content/res/TypedArray;->mData:[I

    #@1b
    iget-object v10, v11, Landroid/content/res/TypedArray;->mIndices:[I

    #@1d
    move/from16 v4, p4

    #@1f
    move/from16 v5, p5

    #@21
    move-object/from16 v8, p3

    #@23
    .line 1120
    invoke-static/range {v2 .. v10}, Landroid/content/res/AssetManager;->applyStyle(JIIJ[I[I[I)Z

    #@26
    .line 1123
    move-object/from16 v0, p1

    #@28
    iput-object v0, v11, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    #@2a
    .line 1124
    iput-object v13, v11, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    monitor-exit v14

    #@2d
    .line 1126
    return-object v11

    #@2e
    .line 1121
    :cond_0
    const-wide/16 v6, 0x0

    #@30
    goto :goto_0

    #@31
    .line 1111
    .end local v11    # "array":Landroid/content/res/TypedArray;
    .end local v12    # "len":I
    .end local v13    # "parser":Landroid/content/res/XmlBlock$Parser;
    :catchall_0
    move-exception v2

    #@32
    monitor-exit v14

    #@33
    throw v2
.end method

.method rebase()V
    .locals 8

    #@0
    .prologue
    .line 1197
    iget-object v4, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@2
    monitor-enter v4

    #@3
    .line 1198
    :try_start_0
    iget-wide v6, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    #@5
    invoke-static {v6, v7}, Landroid/content/res/AssetManager;->clearTheme(J)V

    #@8
    .line 1201
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@b
    iget v3, v3, Landroid/content/res/Resources$ThemeKey;->mCount:I

    #@d
    if-ge v1, v3, :cond_0

    #@f
    .line 1202
    iget-object v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@11
    iget-object v3, v3, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    #@13
    aget v2, v3, v1

    #@15
    .line 1203
    .local v2, "resId":I
    iget-object v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@17
    iget-object v3, v3, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    #@19
    aget-boolean v0, v3, v1

    #@1b
    .line 1204
    .local v0, "force":Z
    iget-wide v6, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    #@1d
    invoke-static {v6, v7, v2, v0}, Landroid/content/res/AssetManager;->applyThemeStyle(JIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 1201
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .end local v0    # "force":Z
    .end local v2    # "resId":I
    :cond_0
    monitor-exit v4

    #@24
    .line 1196
    return-void

    #@25
    .line 1197
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@26
    monitor-exit v4

    #@27
    throw v3
.end method

.method resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .locals 8
    .param p1, "resid"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    #@0
    .prologue
    .line 1150
    iget-object v7, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@2
    monitor-enter v7

    #@3
    .line 1151
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    #@5
    iget-wide v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    #@7
    move v4, p1

    #@8
    move-object v5, p2

    #@9
    move v6, p3

    #@a
    invoke-virtual/range {v1 .. v6}, Landroid/content/res/AssetManager;->getThemeValue(JILandroid/util/TypedValue;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v0

    #@e
    monitor-exit v7

    #@f
    return v0

    #@10
    .line 1150
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v7

    #@12
    throw v0
.end method

.method resolveAttributes(Landroid/content/res/Resources$Theme;[I[I)Landroid/content/res/TypedArray;
    .locals 11
    .param p1, "wrapper"    # Landroid/content/res/Resources$Theme;
    .param p2, "values"    # [I
    .param p3, "attrs"    # [I

    #@0
    .prologue
    .line 1134
    iget-object v10, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@2
    monitor-enter v10

    #@3
    .line 1135
    :try_start_0
    array-length v9, p3

    #@4
    .line 1136
    .local v9, "len":I
    if-eqz p2, :cond_0

    #@6
    array-length v0, p2

    #@7
    if-eq v9, v0, :cond_1

    #@9
    .line 1137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    .line 1138
    const-string/jumbo v1, "Base attribute values must the same length as attrs"

    #@e
    .line 1137
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 1134
    .end local v9    # "len":I
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v10

    #@14
    throw v0

    #@15
    .line 1141
    .restart local v9    # "len":I
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0, v9}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    #@1c
    move-result-object v8

    #@1d
    .line 1142
    .local v8, "array":Landroid/content/res/TypedArray;
    iget-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    #@1f
    iget-object v6, v8, Landroid/content/res/TypedArray;->mData:[I

    #@21
    iget-object v7, v8, Landroid/content/res/TypedArray;->mIndices:[I

    #@23
    const/4 v2, 0x0

    #@24
    const/4 v3, 0x0

    #@25
    move-object v4, p2

    #@26
    move-object v5, p3

    #@27
    invoke-static/range {v0 .. v7}, Landroid/content/res/AssetManager;->resolveAttrs(JII[I[I[I[I)Z

    #@2a
    .line 1143
    iput-object p1, v8, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    #@2c
    .line 1144
    const/4 v0, 0x0

    #@2d
    iput-object v0, v8, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    monitor-exit v10

    #@30
    .line 1145
    return-object v8
.end method

.method setTo(Landroid/content/res/ResourcesImpl$ThemeImpl;)V
    .locals 8
    .param p1, "other"    # Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@0
    .prologue
    .line 1095
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@2
    monitor-enter v1

    #@3
    .line 1096
    :try_start_0
    iget-object v2, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1097
    :try_start_1
    iget-wide v4, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    #@8
    iget-wide v6, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    #@a
    invoke-static {v4, v5, v6, v7}, Landroid/content/res/AssetManager;->copyTheme(JJ)V

    #@d
    .line 1099
    iget v0, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    #@f
    iput v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    #@11
    .line 1100
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@13
    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getKey()Landroid/content/res/Resources$ThemeKey;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$ThemeKey;->setTo(Landroid/content/res/Resources$ThemeKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1b
    monitor-exit v1

    #@1c
    .line 1094
    return-void

    #@1d
    .line 1096
    :catchall_0
    move-exception v0

    #@1e
    :try_start_3
    monitor-exit v2

    #@1f
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@20
    .line 1095
    :catchall_1
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0
.end method
