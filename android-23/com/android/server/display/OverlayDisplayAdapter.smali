.class final Lcom/android/server/display/OverlayDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DISPLAY_PATTERN:Ljava/util/regex/Pattern;

.field private static final MAX_HEIGHT:I = 0x1000

.field private static final MAX_WIDTH:I = 0x1000

.field private static final MIN_HEIGHT:I = 0x64

.field private static final MIN_WIDTH:I = 0x64

.field private static final MODE_PATTERN:Ljava/util/regex/Pattern;

.field static final TAG:Ljava/lang/String; = "OverlayDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "overlay:"


# instance fields
.field private mCurrentOverlaySetting:Ljava/lang/String;

.field private final mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/display/OverlayDisplayAdapter;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevices()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 79
    const-string/jumbo v0, "([^,]+)(,[a-z]+)*"

    #@3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    .line 78
    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    #@9
    .line 81
    const-string/jumbo v0, "(\\d+)x(\\d+)/(\\d+)"

    #@c
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@f
    move-result-object v0

    #@10
    .line 80
    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    #@12
    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .locals 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "uiHandler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 94
    const-string/jumbo v5, "OverlayDisplayAdapter"

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v4, p4

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    #@b
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 87
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    #@12
    .line 89
    const-string/jumbo v0, ""

    #@15
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    #@17
    .line 95
    iput-object p5, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    #@19
    .line 93
    return-void
.end method

.method private static chooseOverlayGravity(I)I
    .locals 1
    .param p0, "overlayNumber"    # I

    #@0
    .prologue
    .line 209
    packed-switch p0, :pswitch_data_0

    #@3
    .line 218
    const/16 v0, 0x53

    #@5
    return v0

    #@6
    .line 211
    :pswitch_0
    const/16 v0, 0x33

    #@8
    return v0

    #@9
    .line 213
    :pswitch_1
    const/16 v0, 0x55

    #@b
    return v0

    #@c
    .line 215
    :pswitch_2
    const/16 v0, 0x35

    #@e
    return v0

    #@f
    .line 209
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateOverlayDisplayDevices()V
    .locals 2

    #@0
    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@3
    move-result-object v0

    #@4
    monitor-enter v0

    #@5
    .line 132
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v0

    #@9
    .line 130
    return-void

    #@a
    .line 131
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v0

    #@c
    throw v1
.end method

.method private updateOverlayDisplayDevicesLocked()V
    .locals 30

    #@0
    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    .line 138
    const-string/jumbo v3, "overlay_display_devices"

    #@b
    .line 137
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v21

    #@f
    .line 139
    .local v21, "value":Ljava/lang/String;
    if-nez v21, :cond_0

    #@11
    .line 140
    const-string/jumbo v21, ""

    #@14
    .line 143
    :cond_0
    move-object/from16 v0, p0

    #@16
    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    #@18
    move-object/from16 v0, v21

    #@1a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 144
    return-void

    #@21
    .line 146
    :cond_1
    move-object/from16 v0, v21

    #@23
    move-object/from16 v1, p0

    #@25
    iput-object v0, v1, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    #@27
    .line 148
    move-object/from16 v0, p0

    #@29
    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@2e
    move-result v2

    #@2f
    if-nez v2, :cond_3

    #@31
    .line 149
    const-string/jumbo v2, "OverlayDisplayAdapter"

    #@34
    const-string/jumbo v3, "Dismissing all overlay display devices."

    #@37
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 150
    move-object/from16 v0, p0

    #@3c
    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    #@3e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@41
    move-result-object v19

    #@42
    .local v19, "overlay$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_2

    #@48
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4b
    move-result-object v18

    #@4c
    check-cast v18, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@4e
    .line 151
    .local v18, "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dismissLocked()V

    #@51
    goto :goto_0

    #@52
    .line 153
    .end local v18    # "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    :cond_2
    move-object/from16 v0, p0

    #@54
    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    #@56
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@59
    .line 156
    .end local v19    # "overlay$iterator":Ljava/util/Iterator;
    :cond_3
    const/4 v9, 0x0

    #@5a
    .line 157
    .local v9, "count":I
    const-string/jumbo v2, ";"

    #@5d
    move-object/from16 v0, v21

    #@5f
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@62
    move-result-object v24

    #@63
    const/4 v2, 0x0

    #@64
    move-object/from16 v0, v24

    #@66
    array-length v0, v0

    #@67
    move/from16 v25, v0

    #@69
    move/from16 v23, v2

    #@6b
    :goto_1
    move/from16 v0, v23

    #@6d
    move/from16 v1, v25

    #@6f
    if-ge v0, v1, :cond_4

    #@71
    aget-object v20, v24, v23

    #@73
    .line 158
    .local v20, "part":Ljava/lang/String;
    sget-object v2, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    #@75
    move-object/from16 v0, v20

    #@77
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@7a
    move-result-object v11

    #@7b
    .line 159
    .local v11, "displayMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    #@7e
    move-result v2

    #@7f
    if-eqz v2, :cond_b

    #@81
    .line 160
    const/4 v2, 0x4

    #@82
    if-lt v9, v2, :cond_5

    #@84
    .line 161
    const-string/jumbo v2, "OverlayDisplayAdapter"

    #@87
    new-instance v3, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v23, "Too many overlay display devices specified: "

    #@8f
    move-object/from16 v0, v23

    #@91
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v3

    #@95
    move-object/from16 v0, v21

    #@97
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v3

    #@9b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v3

    #@9f
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a2
    .line 136
    .end local v11    # "displayMatcher":Ljava/util/regex/Matcher;
    .end local v20    # "part":Ljava/lang/String;
    :cond_4
    return-void

    #@a3
    .line 164
    .restart local v11    # "displayMatcher":Ljava/util/regex/Matcher;
    .restart local v20    # "part":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x1

    #@a4
    invoke-virtual {v11, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@a7
    move-result-object v17

    #@a8
    .line 165
    .local v17, "modeString":Ljava/lang/String;
    const/4 v2, 0x2

    #@a9
    invoke-virtual {v11, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@ac
    move-result-object v13

    #@ad
    .line 166
    .local v13, "flagString":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    #@af
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@b2
    .line 167
    .local v5, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    const-string/jumbo v2, "\\|"

    #@b5
    move-object/from16 v0, v17

    #@b7
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@ba
    move-result-object v3

    #@bb
    const/4 v2, 0x0

    #@bc
    array-length v0, v3

    #@bd
    move/from16 v26, v0

    #@bf
    :goto_2
    move/from16 v0, v26

    #@c1
    if-ge v2, v0, :cond_9

    #@c3
    aget-object v15, v3, v2

    #@c5
    .line 168
    .local v15, "mode":Ljava/lang/String;
    sget-object v27, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    #@c7
    move-object/from16 v0, v27

    #@c9
    invoke-virtual {v0, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@cc
    move-result-object v16

    #@cd
    .line 169
    .local v16, "modeMatcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->matches()Z

    #@d0
    move-result v27

    #@d1
    if-eqz v27, :cond_8

    #@d3
    .line 171
    const/16 v27, 0x1

    #@d5
    :try_start_0
    move-object/from16 v0, v16

    #@d7
    move/from16 v1, v27

    #@d9
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@dc
    move-result-object v27

    #@dd
    const/16 v28, 0xa

    #@df
    invoke-static/range {v27 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@e2
    move-result v22

    #@e3
    .line 172
    .local v22, "width":I
    const/16 v27, 0x2

    #@e5
    move-object/from16 v0, v16

    #@e7
    move/from16 v1, v27

    #@e9
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@ec
    move-result-object v27

    #@ed
    const/16 v28, 0xa

    #@ef
    invoke-static/range {v27 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@f2
    move-result v14

    #@f3
    .line 173
    .local v14, "height":I
    const/16 v27, 0x3

    #@f5
    move-object/from16 v0, v16

    #@f7
    move/from16 v1, v27

    #@f9
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@fc
    move-result-object v27

    #@fd
    const/16 v28, 0xa

    #@ff
    invoke-static/range {v27 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@102
    move-result v10

    #@103
    .line 174
    .local v10, "densityDpi":I
    const/16 v27, 0x64

    #@105
    move/from16 v0, v22

    #@107
    move/from16 v1, v27

    #@109
    if-lt v0, v1, :cond_7

    #@10b
    const/16 v27, 0x1000

    #@10d
    move/from16 v0, v22

    #@10f
    move/from16 v1, v27

    #@111
    if-gt v0, v1, :cond_7

    #@113
    .line 175
    const/16 v27, 0x64

    #@115
    move/from16 v0, v27

    #@117
    if-lt v14, v0, :cond_7

    #@119
    const/16 v27, 0x1000

    #@11b
    move/from16 v0, v27

    #@11d
    if-gt v14, v0, :cond_7

    #@11f
    .line 176
    const/16 v27, 0x78

    #@121
    move/from16 v0, v27

    #@123
    if-lt v10, v0, :cond_7

    #@125
    .line 177
    const/16 v27, 0x280

    #@127
    move/from16 v0, v27

    #@129
    if-gt v10, v0, :cond_7

    #@12b
    .line 178
    new-instance v27, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    #@12d
    move-object/from16 v0, v27

    #@12f
    move/from16 v1, v22

    #@131
    invoke-direct {v0, v1, v14, v10}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;-><init>(III)V

    #@134
    move-object/from16 v0, v27

    #@136
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@139
    .line 167
    .end local v10    # "densityDpi":I
    .end local v14    # "height":I
    .end local v22    # "width":I
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@13b
    goto :goto_2

    #@13c
    .line 181
    .restart local v10    # "densityDpi":I
    .restart local v14    # "height":I
    .restart local v22    # "width":I
    :cond_7
    const-string/jumbo v27, "OverlayDisplayAdapter"

    #@13f
    new-instance v28, Ljava/lang/StringBuilder;

    #@141
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@144
    const-string/jumbo v29, "Ignoring out-of-range overlay display mode: "

    #@147
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v28

    #@14b
    move-object/from16 v0, v28

    #@14d
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v28

    #@151
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@154
    move-result-object v28

    #@155
    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@158
    goto :goto_3

    #@159
    .line 183
    .end local v10    # "densityDpi":I
    .end local v14    # "height":I
    .end local v22    # "width":I
    :catch_0
    move-exception v12

    #@15a
    .local v12, "ex":Ljava/lang/NumberFormatException;
    goto :goto_3

    #@15b
    .line 185
    .end local v12    # "ex":Ljava/lang/NumberFormatException;
    :cond_8
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    #@15e
    move-result v27

    #@15f
    if-eqz v27, :cond_6

    #@161
    goto :goto_3

    #@162
    .line 189
    .end local v15    # "mode":Ljava/lang/String;
    .end local v16    # "modeMatcher":Ljava/util/regex/Matcher;
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@165
    move-result v2

    #@166
    if-nez v2, :cond_b

    #@168
    .line 190
    add-int/lit8 v9, v9, 0x1

    #@16a
    move v8, v9

    #@16b
    .line 191
    .local v8, "number":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    #@16e
    move-result-object v2

    #@16f
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@172
    move-result-object v2

    #@173
    const/4 v3, 0x1

    #@174
    new-array v3, v3, [Ljava/lang/Object;

    #@176
    .line 193
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@179
    move-result-object v26

    #@17a
    const/16 v27, 0x0

    #@17c
    aput-object v26, v3, v27

    #@17e
    .line 192
    const v26, 0x10404c0

    #@181
    .line 191
    move/from16 v0, v26

    #@183
    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@186
    move-result-object v4

    #@187
    .line 194
    .local v4, "name":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/display/OverlayDisplayAdapter;->chooseOverlayGravity(I)I

    #@18a
    move-result v6

    #@18b
    .line 195
    .local v6, "gravity":I
    if-eqz v13, :cond_a

    #@18d
    const-string/jumbo v2, ",secure"

    #@190
    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@193
    move-result v7

    #@194
    .line 197
    :goto_4
    const-string/jumbo v2, "OverlayDisplayAdapter"

    #@197
    new-instance v3, Ljava/lang/StringBuilder;

    #@199
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19c
    const-string/jumbo v26, "Showing overlay display device #"

    #@19f
    move-object/from16 v0, v26

    #@1a1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v3

    #@1a5
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v3

    #@1a9
    .line 198
    const-string/jumbo v26, ": name="

    #@1ac
    .line 197
    move-object/from16 v0, v26

    #@1ae
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v3

    #@1b2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v3

    #@1b6
    .line 198
    const-string/jumbo v26, ", modes="

    #@1b9
    .line 197
    move-object/from16 v0, v26

    #@1bb
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v3

    #@1bf
    .line 198
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@1c2
    move-result-object v26

    #@1c3
    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@1c6
    move-result-object v26

    #@1c7
    .line 197
    move-object/from16 v0, v26

    #@1c9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v3

    #@1cd
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d0
    move-result-object v3

    #@1d1
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1d4
    .line 200
    move-object/from16 v0, p0

    #@1d6
    iget-object v0, v0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    #@1d8
    move-object/from16 v26, v0

    #@1da
    new-instance v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@1dc
    move-object/from16 v3, p0

    #@1de
    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;IZI)V

    #@1e1
    move-object/from16 v0, v26

    #@1e3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e6
    .line 157
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .end local v6    # "gravity":I
    .end local v8    # "number":I
    .end local v13    # "flagString":Ljava/lang/String;
    .end local v17    # "modeString":Ljava/lang/String;
    :goto_5
    add-int/lit8 v2, v23, 0x1

    #@1e8
    move/from16 v23, v2

    #@1ea
    goto/16 :goto_1

    #@1ec
    .line 195
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .restart local v6    # "gravity":I
    .restart local v8    # "number":I
    .restart local v13    # "flagString":Ljava/lang/String;
    .restart local v17    # "modeString":Ljava/lang/String;
    :cond_a
    const/4 v7, 0x0

    #@1ed
    .local v7, "secure":Z
    goto :goto_4

    #@1ee
    .line 204
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .end local v6    # "gravity":I
    .end local v7    # "secure":Z
    .end local v8    # "number":I
    .end local v13    # "flagString":Ljava/lang/String;
    .end local v17    # "modeString":Ljava/lang/String;
    :cond_b
    const-string/jumbo v2, "OverlayDisplayAdapter"

    #@1f1
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f6
    const-string/jumbo v26, "Malformed overlay display devices setting: "

    #@1f9
    move-object/from16 v0, v26

    #@1fb
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fe
    move-result-object v3

    #@1ff
    move-object/from16 v0, v21

    #@201
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v3

    #@205
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@208
    move-result-object v3

    #@209
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20c
    goto :goto_5
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    #@3
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "mCurrentOverlaySetting="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "mOverlays: size="

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v3

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 104
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    #@3b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v1

    #@3f
    .local v1, "overlay$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_0

    #@45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@4b
    .line 105
    .local v0, "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual {v0, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dumpLocked(Ljava/io/PrintWriter;)V

    #@4e
    goto :goto_0

    #@4f
    .line 99
    .end local v0    # "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    :cond_0
    return-void
.end method

.method public registerLocked()V
    .locals 2

    #@0
    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    #@3
    .line 113
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getHandler()Landroid/os/Handler;

    #@6
    move-result-object v0

    #@7
    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$1;

    #@9
    invoke-direct {v1, p0}, Lcom/android/server/display/OverlayDisplayAdapter$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;)V

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@f
    .line 110
    return-void
.end method
