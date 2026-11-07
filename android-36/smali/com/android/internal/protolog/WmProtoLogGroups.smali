.class public final enum Lcom/android/internal/protolog/WmProtoLogGroups;
.super Ljava/lang/Enum;
.source "WmProtoLogGroups.java"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLogGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/WmProtoLogGroups$Consts;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/protolog/WmProtoLogGroups;",
        ">;",
        "Lcom/android/internal/protolog/common/IProtoLogGroup;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist TEST_GROUP:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_BOOT:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_DRAW:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_DREAM:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_ORIENTATION_CHANGE:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_PRESENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_SLEEP_TOKEN:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_SWITCH:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_ERROR:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;


# instance fields
.field private final blacklist mEnabled:Z

.field private volatile blacklist mLogToLogcat:Z

.field private volatile blacklist mLogToProto:Z

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/protolog/WmProtoLogGroups;
    .registers 44

    .line 29
    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_ERROR:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION_CHANGE:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v12, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v13, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v14, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v15, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v16, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v17, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v18, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v19, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v20, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v21, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v22, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v23, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DRAW:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v24, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v25, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v26, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v27, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SLEEP_TOKEN:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v28, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v29, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v30, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v31, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v32, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v33, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v34, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v35, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v36, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v37, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v38, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DREAM:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v39, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v40, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v41, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v42, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_PRESENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v43, Lcom/android/internal/protolog/WmProtoLogGroups;->TEST_GROUP:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array/range {v1 .. v43}, [Lcom/android/internal/protolog/WmProtoLogGroups;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 14

    .line 30
    new-instance v0, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v5, 0x1

    const-string v6, "WindowManager"

    const-string v1, "WM_ERROR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_ERROR:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 31
    new-instance v1, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v6, 0x0

    const-string v7, "WindowManager"

    const-string v2, "WM_DEBUG_ORIENTATION"

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 33
    new-instance v2, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v7, 0x1

    const-string v8, "WindowManager"

    const-string v3, "WM_DEBUG_ORIENTATION_CHANGE"

    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION_CHANGE:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 35
    new-instance v3, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v8, 0x0

    const-string v9, "WindowManager"

    const-string v4, "WM_DEBUG_FOCUS_LIGHT"

    const/4 v5, 0x3

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 37
    new-instance v4, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v9, 0x0

    const-string v10, "WindowManager"

    const-string v5, "WM_DEBUG_BOOT"

    const/4 v6, 0x4

    const/4 v8, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 39
    new-instance v5, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v10, 0x0

    const-string v11, "WindowManager"

    const-string v6, "WM_DEBUG_RESIZE"

    const/4 v7, 0x5

    const/4 v9, 0x1

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 41
    new-instance v6, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v11, 0x0

    const-string v12, "WindowManager"

    const-string v7, "WM_DEBUG_ADD_REMOVE"

    const/4 v8, 0x6

    const/4 v10, 0x1

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 43
    new-instance v7, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v12, 0x0

    const-string v13, "WindowManager"

    const-string v8, "WM_DEBUG_CONFIGURATION"

    const/4 v9, 0x7

    const/4 v11, 0x1

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 45
    new-instance v0, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v5, 0x0

    const-string v6, "WindowManager"

    const-string v1, "WM_DEBUG_SWITCH"

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 47
    new-instance v1, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v6, 0x0

    const-string v7, "WindowManager"

    const-string v2, "WM_DEBUG_CONTAINERS"

    const/16 v3, 0x9

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 49
    new-instance v2, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v7, 0x0

    const-string v8, "WindowManager"

    const-string v3, "WM_DEBUG_FOCUS"

    const/16 v4, 0xa

    const/4 v6, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 51
    new-instance v3, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v8, 0x0

    const-string v9, "WindowManager"

    const-string v4, "WM_DEBUG_IMMERSIVE"

    const/16 v5, 0xb

    const/4 v7, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 53
    new-instance v4, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v9, 0x0

    const-string v10, "WindowManager"

    const-string v5, "WM_DEBUG_LOCKTASK"

    const/16 v6, 0xc

    const/4 v8, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 55
    new-instance v5, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v10, 0x0

    const-string v11, "WindowManager"

    const-string v6, "WM_DEBUG_STATES"

    const/16 v7, 0xd

    const/4 v9, 0x1

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 57
    new-instance v6, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v11, 0x0

    const-string v12, "WindowManager"

    const-string v7, "WM_DEBUG_TASKS"

    const/16 v8, 0xe

    const/4 v10, 0x1

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 59
    new-instance v7, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v12, 0x0

    const-string v13, "WindowManager"

    const-string v8, "WM_DEBUG_STARTING_WINDOW"

    const/16 v9, 0xf

    const/4 v11, 0x1

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 61
    new-instance v0, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v5, 0x0

    const-string v6, "WindowManager"

    const-string v1, "WM_SHOW_TRANSACTIONS"

    const/16 v2, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 63
    new-instance v1, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v6, 0x0

    const-string v7, "WindowManager"

    const-string v2, "WM_SHOW_SURFACE_ALLOC"

    const/16 v3, 0x11

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 65
    new-instance v2, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v7, 0x0

    const-string v8, "WindowManager"

    const-string v3, "WM_DEBUG_APP_TRANSITIONS"

    const/16 v4, 0x12

    const/4 v6, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 67
    new-instance v3, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v8, 0x0

    const-string v9, "WindowManager"

    const-string v4, "WM_DEBUG_ANIM"

    const/16 v5, 0x13

    const/4 v7, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 68
    new-instance v4, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v9, 0x0

    const-string v10, "WindowManager"

    const-string v5, "WM_DEBUG_APP_TRANSITIONS_ANIM"

    const/16 v6, 0x14

    const/4 v8, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 70
    new-instance v5, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v10, 0x0

    const-string v11, "WindowManager"

    const-string v6, "WM_DEBUG_RECENTS_ANIMATIONS"

    const/16 v7, 0x15

    const/4 v9, 0x1

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 72
    new-instance v6, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v11, 0x0

    const-string v12, "WindowManager"

    const-string v7, "WM_DEBUG_DRAW"

    const/16 v8, 0x16

    const/4 v10, 0x1

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DRAW:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 73
    new-instance v7, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v12, 0x0

    const-string v13, "WindowManager"

    const-string v8, "WM_DEBUG_REMOTE_ANIMATIONS"

    const/16 v9, 0x17

    const/4 v11, 0x1

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 75
    new-instance v0, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v5, 0x0

    const-string v6, "WindowManager"

    const-string v1, "WM_DEBUG_SCREEN_ON"

    const/16 v2, 0x18

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 76
    new-instance v1, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v6, 0x0

    const-string v7, "WindowManager"

    const-string v2, "WM_DEBUG_KEEP_SCREEN_ON"

    const/16 v3, 0x19

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 78
    new-instance v2, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v7, 0x1

    const-string v8, "WindowManager"

    const-string v3, "WM_DEBUG_SLEEP_TOKEN"

    const/16 v4, 0x1a

    const/4 v6, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SLEEP_TOKEN:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 80
    new-instance v3, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v8, 0x0

    const-string v9, "WindowManager"

    const-string v4, "WM_DEBUG_WINDOW_MOVEMENT"

    const/16 v5, 0x1b

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 82
    new-instance v4, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v9, 0x0

    const-string v10, "WindowManager"

    const-string v5, "WM_DEBUG_IME"

    const/16 v6, 0x1c

    const/4 v8, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 84
    new-instance v5, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v10, 0x0

    const-string v11, "WindowManager"

    const-string v6, "WM_DEBUG_WINDOW_ORGANIZER"

    const/16 v7, 0x1d

    const/4 v9, 0x1

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 86
    new-instance v6, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v11, 0x0

    const-string v12, "WindowManager"

    const-string v7, "WM_DEBUG_SYNC_ENGINE"

    const/16 v8, 0x1e

    const/4 v10, 0x1

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 88
    new-instance v7, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v12, 0x0

    const-string v13, "WindowManager"

    const-string v8, "WM_DEBUG_WINDOW_TRANSITIONS"

    const/16 v9, 0x1f

    const/4 v11, 0x1

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 90
    new-instance v0, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v5, 0x1

    const-string v6, "WindowManager"

    const-string v1, "WM_DEBUG_WINDOW_TRANSITIONS_MIN"

    const/16 v2, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 92
    new-instance v1, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v6, 0x0

    const-string v7, "WindowManager"

    const-string v2, "WM_DEBUG_WINDOW_INSETS"

    const/16 v3, 0x21

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 94
    new-instance v2, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v7, 0x1

    const-string v8, "WindowManager"

    const-string v3, "WM_DEBUG_CONTENT_RECORDING"

    const/16 v4, 0x22

    const/4 v6, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 96
    new-instance v3, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v8, 0x0

    const-string v9, "WindowManager"

    const-string v4, "WM_DEBUG_WALLPAPER"

    const/16 v5, 0x23

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 97
    new-instance v4, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v9, 0x1

    const-string v10, "CoreBackPreview"

    const-string v5, "WM_DEBUG_BACK_PREVIEW"

    const/16 v6, 0x24

    const/4 v8, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 99
    new-instance v5, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v10, 0x1

    const-string v11, "WindowManager"

    const-string v6, "WM_DEBUG_DREAM"

    const/16 v7, 0x25

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DREAM:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 101
    new-instance v6, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v11, 0x0

    const-string v12, "WindowManager"

    const-string v7, "WM_DEBUG_DIMMER"

    const/16 v8, 0x26

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 102
    new-instance v7, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v12, 0x0

    const-string v13, "WindowManager"

    const-string v8, "WM_DEBUG_TPL"

    const/16 v9, 0x27

    const/4 v11, 0x1

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 103
    new-instance v0, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v5, 0x0

    const-string v6, "WindowManager"

    const-string v1, "WM_DEBUG_EMBEDDED_WINDOWS"

    const/16 v2, 0x28

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 105
    new-instance v1, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v6, 0x0

    const-string v7, "WindowManager"

    const-string v2, "WM_DEBUG_PRESENTATION"

    const/16 v3, 0x29

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_PRESENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 107
    new-instance v2, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v7, 0x0

    const-string v8, "WindowManagerProtoLogTest"

    const-string v3, "TEST_GROUP"

    const/16 v4, 0x2a

    const/4 v6, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->TEST_GROUP:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 29
    invoke-static {}, Lcom/android/internal/protolog/WmProtoLogGroups;->$values()[Lcom/android/internal/protolog/WmProtoLogGroups;

    move-result-object v0

    sput-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->$VALUES:[Lcom/android/internal/protolog/WmProtoLogGroups;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IZZZLjava/lang/String;)V
    .registers 7
    .param p3, "enabled"    # Z
    .param p4, "logToProto"    # Z
    .param p5, "logToLogcat"    # Z
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    iput-boolean p3, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mEnabled:Z

    .line 124
    iput-boolean p4, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mLogToProto:Z

    .line 125
    iput-boolean p5, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mLogToLogcat:Z

    .line 126
    iput-object p6, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mTag:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/protolog/WmProtoLogGroups;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 29
    const-class v0, Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/WmProtoLogGroups;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/protolog/WmProtoLogGroups;
    .registers 1

    .line 29
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->$VALUES:[Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0}, [Lcom/android/internal/protolog/WmProtoLogGroups;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/protolog/WmProtoLogGroups;

    return-object v0
.end method


# virtual methods
.method public blacklist getId()I
    .registers 3

    .line 166
    invoke-static {}, Lcom/android/internal/protolog/WmProtoLogGroups$Consts;->-$$Nest$sfgetSTART_ID()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/protolog/WmProtoLogGroups;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getTag()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mEnabled:Z

    return v0
.end method

.method public blacklist isLogToAny()Z
    .registers 2

    .line 146
    iget-boolean v0, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mLogToLogcat:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mLogToProto:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public blacklist isLogToLogcat()Z
    .registers 2

    .line 141
    iget-boolean v0, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mLogToLogcat:Z

    return v0
.end method

.method public blacklist isLogToProto()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mLogToProto:Z

    return v0
.end method

.method public blacklist setLogToLogcat(Z)V
    .registers 2
    .param p1, "logToLogcat"    # Z

    .line 161
    iput-boolean p1, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mLogToLogcat:Z

    .line 162
    return-void
.end method

.method public blacklist setLogToProto(Z)V
    .registers 2
    .param p1, "logToProto"    # Z

    .line 156
    iput-boolean p1, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mLogToProto:Z

    .line 157
    return-void
.end method
