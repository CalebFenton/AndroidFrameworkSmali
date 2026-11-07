.class public final enum Landroid/window/DesktopExperienceFlags;
.super Ljava/lang/Enum;
.source "DesktopExperienceFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/window/DesktopExperienceFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ACTIVITY_EMBEDDING_SUPPORT_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist BASE_DENSITY_FOR_EXTERNAL_DISPLAYS:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist CONNECTED_DISPLAYS_CURSOR:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist DISPLAY_TOPOLOGY:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_BUG_FIXES_FOR_SECONDARY_DISPLAY:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_CONNECTED_DISPLAYS_DND:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_CONNECTED_DISPLAYS_PIP:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_CONNECTED_DISPLAYS_WALLPAPER:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_CONNECTED_DISPLAYS_WINDOW_DRAG:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_DISPLAY_DISCONNECT_INTERACTION:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_DISPLAY_FOCUS_IN_SHELL_TRANSITIONS:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_DISPLAY_RECONNECT_INTERACTION:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_DISPLAY_WINDOWING_MODE_SWITCHING:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_DRAG_TO_MAXIMIZE:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_DYNAMIC_RADIUS_COMPUTATION_BUGFIX:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_KEYBOARD_SHORTCUTS_TO_SWITCH_DESKS:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_MOVE_TO_NEXT_DISPLAY_SHORTCUT:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_MULTIDISPLAY_TRACKPAD_BACK_GESTURE:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_MULTIPLE_DESKTOPS_BACKEND:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_MULTIPLE_DESKTOPS_FRONTEND:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_PERSISTING_DISPLAY_SIZE_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_PER_DISPLAY_DESKTOP_WALLPAPER_ACTIVITY:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_PER_DISPLAY_PACKAGE_CONTEXT_CACHE_IN_STATUSBAR_NOTIF:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_PROJECTED_DISPLAY_DESKTOP_MODE:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENABLE_TASKBAR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist ENTER_DESKTOP_BY_DEFAULT_ON_FREEFORM_DISPLAYS:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist FORM_FACTOR_BASED_DESKTOP_FIRST_SWITCH:Landroid/window/DesktopExperienceFlags;

.field public static final enum blacklist REPARENT_WINDOW_TOKEN_API:Landroid/window/DesktopExperienceFlags;

.field public static final blacklist SYSTEM_PROPERTY_NAME:Ljava/lang/String; = "persist.wm.debug.desktop_experience_devopts"

.field private static final blacklist TAG:Ljava/lang/String; = "DesktopExperienceFlags"

.field private static blacklist sCachedToggleOverride:Ljava/lang/Boolean;


# instance fields
.field private final blacklist mFlagFunction:Ljava/util/function/BooleanSupplier;

.field private final blacklist mShouldOverrideByDevOption:Z


# direct methods
.method private static synthetic blacklist $values()[Landroid/window/DesktopExperienceFlags;
    .registers 30

    .line 42
    sget-object v1, Landroid/window/DesktopExperienceFlags;->ACTIVITY_EMBEDDING_SUPPORT_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    sget-object v2, Landroid/window/DesktopExperienceFlags;->BASE_DENSITY_FOR_EXTERNAL_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    sget-object v3, Landroid/window/DesktopExperienceFlags;->CONNECTED_DISPLAYS_CURSOR:Landroid/window/DesktopExperienceFlags;

    sget-object v4, Landroid/window/DesktopExperienceFlags;->DISPLAY_TOPOLOGY:Landroid/window/DesktopExperienceFlags;

    sget-object v5, Landroid/window/DesktopExperienceFlags;->ENABLE_BUG_FIXES_FOR_SECONDARY_DISPLAY:Landroid/window/DesktopExperienceFlags;

    sget-object v6, Landroid/window/DesktopExperienceFlags;->ENABLE_CONNECTED_DISPLAYS_DND:Landroid/window/DesktopExperienceFlags;

    sget-object v7, Landroid/window/DesktopExperienceFlags;->ENABLE_CONNECTED_DISPLAYS_PIP:Landroid/window/DesktopExperienceFlags;

    sget-object v8, Landroid/window/DesktopExperienceFlags;->ENABLE_CONNECTED_DISPLAYS_WALLPAPER:Landroid/window/DesktopExperienceFlags;

    sget-object v9, Landroid/window/DesktopExperienceFlags;->ENABLE_CONNECTED_DISPLAYS_WINDOW_DRAG:Landroid/window/DesktopExperienceFlags;

    sget-object v10, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    sget-object v11, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_DISCONNECT_INTERACTION:Landroid/window/DesktopExperienceFlags;

    sget-object v12, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_FOCUS_IN_SHELL_TRANSITIONS:Landroid/window/DesktopExperienceFlags;

    sget-object v13, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_RECONNECT_INTERACTION:Landroid/window/DesktopExperienceFlags;

    sget-object v14, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_WINDOWING_MODE_SWITCHING:Landroid/window/DesktopExperienceFlags;

    sget-object v15, Landroid/window/DesktopExperienceFlags;->ENABLE_DRAG_TO_MAXIMIZE:Landroid/window/DesktopExperienceFlags;

    sget-object v16, Landroid/window/DesktopExperienceFlags;->ENABLE_DYNAMIC_RADIUS_COMPUTATION_BUGFIX:Landroid/window/DesktopExperienceFlags;

    sget-object v17, Landroid/window/DesktopExperienceFlags;->ENABLE_KEYBOARD_SHORTCUTS_TO_SWITCH_DESKS:Landroid/window/DesktopExperienceFlags;

    sget-object v18, Landroid/window/DesktopExperienceFlags;->ENABLE_MOVE_TO_NEXT_DISPLAY_SHORTCUT:Landroid/window/DesktopExperienceFlags;

    sget-object v19, Landroid/window/DesktopExperienceFlags;->ENABLE_MULTIDISPLAY_TRACKPAD_BACK_GESTURE:Landroid/window/DesktopExperienceFlags;

    sget-object v20, Landroid/window/DesktopExperienceFlags;->ENABLE_MULTIPLE_DESKTOPS_BACKEND:Landroid/window/DesktopExperienceFlags;

    sget-object v21, Landroid/window/DesktopExperienceFlags;->ENABLE_MULTIPLE_DESKTOPS_FRONTEND:Landroid/window/DesktopExperienceFlags;

    sget-object v22, Landroid/window/DesktopExperienceFlags;->ENABLE_PERSISTING_DISPLAY_SIZE_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    sget-object v23, Landroid/window/DesktopExperienceFlags;->ENABLE_PER_DISPLAY_DESKTOP_WALLPAPER_ACTIVITY:Landroid/window/DesktopExperienceFlags;

    sget-object v24, Landroid/window/DesktopExperienceFlags;->ENABLE_PER_DISPLAY_PACKAGE_CONTEXT_CACHE_IN_STATUSBAR_NOTIF:Landroid/window/DesktopExperienceFlags;

    sget-object v25, Landroid/window/DesktopExperienceFlags;->ENABLE_PROJECTED_DISPLAY_DESKTOP_MODE:Landroid/window/DesktopExperienceFlags;

    sget-object v26, Landroid/window/DesktopExperienceFlags;->ENABLE_TASKBAR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    sget-object v27, Landroid/window/DesktopExperienceFlags;->ENTER_DESKTOP_BY_DEFAULT_ON_FREEFORM_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    sget-object v28, Landroid/window/DesktopExperienceFlags;->FORM_FACTOR_BASED_DESKTOP_FIRST_SWITCH:Landroid/window/DesktopExperienceFlags;

    sget-object v29, Landroid/window/DesktopExperienceFlags;->REPARENT_WINDOW_TOKEN_API:Landroid/window/DesktopExperienceFlags;

    filled-new-array/range {v1 .. v29}, [Landroid/window/DesktopExperienceFlags;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smisFlagTrue(Ljava/util/function/BooleanSupplier;Z)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/window/DesktopExperienceFlags;->isFlagTrue(Ljava/util/function/BooleanSupplier;Z)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 44
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "ACTIVITY_EMBEDDING_SUPPORT_FOR_CONNECTED_DISPLAYS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ACTIVITY_EMBEDDING_SUPPORT_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    .line 46
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v2, "BASE_DENSITY_FOR_EXTERNAL_DISPLAYS"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1, v4}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->BASE_DENSITY_FOR_EXTERNAL_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    .line 48
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v2, "CONNECTED_DISPLAYS_CURSOR"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1, v4}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->CONNECTED_DISPLAYS_CURSOR:Landroid/window/DesktopExperienceFlags;

    .line 49
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v2, "DISPLAY_TOPOLOGY"

    const/4 v5, 0x3

    invoke-direct {v0, v2, v5, v1, v4}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->DISPLAY_TOPOLOGY:Landroid/window/DesktopExperienceFlags;

    .line 50
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v2, "ENABLE_BUG_FIXES_FOR_SECONDARY_DISPLAY"

    const/4 v5, 0x4

    invoke-direct {v0, v2, v5, v1, v4}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_BUG_FIXES_FOR_SECONDARY_DISPLAY:Landroid/window/DesktopExperienceFlags;

    .line 51
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v2, "ENABLE_CONNECTED_DISPLAYS_DND"

    const/4 v5, 0x5

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_CONNECTED_DISPLAYS_DND:Landroid/window/DesktopExperienceFlags;

    .line 52
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda25;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v2, "ENABLE_CONNECTED_DISPLAYS_PIP"

    const/4 v5, 0x6

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_CONNECTED_DISPLAYS_PIP:Landroid/window/DesktopExperienceFlags;

    .line 53
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda26;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v2, "ENABLE_CONNECTED_DISPLAYS_WALLPAPER"

    const/4 v5, 0x7

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_CONNECTED_DISPLAYS_WALLPAPER:Landroid/window/DesktopExperienceFlags;

    .line 55
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v2, "ENABLE_CONNECTED_DISPLAYS_WINDOW_DRAG"

    const/16 v5, 0x8

    invoke-direct {v0, v2, v5, v1, v4}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_CONNECTED_DISPLAYS_WINDOW_DRAG:Landroid/window/DesktopExperienceFlags;

    .line 56
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v2, "ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT"

    const/16 v5, 0x9

    invoke-direct {v0, v2, v5, v1, v4}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    .line 59
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "ENABLE_DISPLAY_DISCONNECT_INTERACTION"

    const/16 v5, 0xa

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_DISCONNECT_INTERACTION:Landroid/window/DesktopExperienceFlags;

    .line 60
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "ENABLE_DISPLAY_FOCUS_IN_SHELL_TRANSITIONS"

    const/16 v5, 0xb

    invoke-direct {v0, v2, v5, v1, v4}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_FOCUS_IN_SHELL_TRANSITIONS:Landroid/window/DesktopExperienceFlags;

    .line 61
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "ENABLE_DISPLAY_RECONNECT_INTERACTION"

    const/16 v5, 0xc

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_RECONNECT_INTERACTION:Landroid/window/DesktopExperienceFlags;

    .line 62
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "ENABLE_DISPLAY_WINDOWING_MODE_SWITCHING"

    const/16 v5, 0xd

    invoke-direct {v0, v2, v5, v1, v4}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_WINDOWING_MODE_SWITCHING:Landroid/window/DesktopExperienceFlags;

    .line 63
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, "ENABLE_DRAG_TO_MAXIMIZE"

    const/16 v5, 0xe

    invoke-direct {v0, v2, v5, v1, v4}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DRAG_TO_MAXIMIZE:Landroid/window/DesktopExperienceFlags;

    .line 64
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v2, "ENABLE_DYNAMIC_RADIUS_COMPUTATION_BUGFIX"

    const/16 v5, 0xf

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DYNAMIC_RADIUS_COMPUTATION_BUGFIX:Landroid/window/DesktopExperienceFlags;

    .line 65
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v2, "ENABLE_KEYBOARD_SHORTCUTS_TO_SWITCH_DESKS"

    const/16 v5, 0x10

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_KEYBOARD_SHORTCUTS_TO_SWITCH_DESKS:Landroid/window/DesktopExperienceFlags;

    .line 66
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v2, "ENABLE_MOVE_TO_NEXT_DISPLAY_SHORTCUT"

    const/16 v5, 0x11

    invoke-direct {v0, v2, v5, v1, v4}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_MOVE_TO_NEXT_DISPLAY_SHORTCUT:Landroid/window/DesktopExperienceFlags;

    .line 67
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v2, "ENABLE_MULTIDISPLAY_TRACKPAD_BACK_GESTURE"

    const/16 v5, 0x12

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_MULTIDISPLAY_TRACKPAD_BACK_GESTURE:Landroid/window/DesktopExperienceFlags;

    .line 68
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v2, "ENABLE_MULTIPLE_DESKTOPS_BACKEND"

    const/16 v5, 0x13

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_MULTIPLE_DESKTOPS_BACKEND:Landroid/window/DesktopExperienceFlags;

    .line 69
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v2, "ENABLE_MULTIPLE_DESKTOPS_FRONTEND"

    const/16 v5, 0x14

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_MULTIPLE_DESKTOPS_FRONTEND:Landroid/window/DesktopExperienceFlags;

    .line 70
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v2, "ENABLE_PERSISTING_DISPLAY_SIZE_FOR_CONNECTED_DISPLAYS"

    const/16 v5, 0x15

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_PERSISTING_DISPLAY_SIZE_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    .line 72
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v2, "ENABLE_PER_DISPLAY_DESKTOP_WALLPAPER_ACTIVITY"

    const/16 v5, 0x16

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_PER_DISPLAY_DESKTOP_WALLPAPER_ACTIVITY:Landroid/window/DesktopExperienceFlags;

    .line 74
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v2, "ENABLE_PER_DISPLAY_PACKAGE_CONTEXT_CACHE_IN_STATUSBAR_NOTIF"

    const/16 v5, 0x17

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_PER_DISPLAY_PACKAGE_CONTEXT_CACHE_IN_STATUSBAR_NOTIF:Landroid/window/DesktopExperienceFlags;

    .line 76
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v2, "ENABLE_PROJECTED_DISPLAY_DESKTOP_MODE"

    const/16 v5, 0x18

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_PROJECTED_DISPLAY_DESKTOP_MODE:Landroid/window/DesktopExperienceFlags;

    .line 77
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v2, "ENABLE_TASKBAR_CONNECTED_DISPLAYS"

    const/16 v5, 0x19

    invoke-direct {v0, v2, v5, v1, v4}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_TASKBAR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    .line 78
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v2, "ENTER_DESKTOP_BY_DEFAULT_ON_FREEFORM_DISPLAYS"

    const/16 v5, 0x1a

    invoke-direct {v0, v2, v5, v1, v4}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->ENTER_DESKTOP_BY_DEFAULT_ON_FREEFORM_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    .line 80
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v2, "FORM_FACTOR_BASED_DESKTOP_FIRST_SWITCH"

    const/16 v5, 0x1b

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->FORM_FACTOR_BASED_DESKTOP_FIRST_SWITCH:Landroid/window/DesktopExperienceFlags;

    .line 81
    new-instance v0, Landroid/window/DesktopExperienceFlags;

    new-instance v1, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Landroid/window/DesktopExperienceFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v2, "REPARENT_WINDOW_TOKEN_API"

    const/16 v3, 0x1c

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/window/DesktopExperienceFlags;-><init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V

    sput-object v0, Landroid/window/DesktopExperienceFlags;->REPARENT_WINDOW_TOKEN_API:Landroid/window/DesktopExperienceFlags;

    .line 42
    invoke-static {}, Landroid/window/DesktopExperienceFlags;->$values()[Landroid/window/DesktopExperienceFlags;

    move-result-object v0

    sput-object v0, Landroid/window/DesktopExperienceFlags;->$VALUES:[Landroid/window/DesktopExperienceFlags;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/util/function/BooleanSupplier;Z)V
    .registers 5
    .param p3, "flagFunction"    # Ljava/util/function/BooleanSupplier;
    .param p4, "shouldOverrideByDevOption"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BooleanSupplier;",
            "Z)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 125
    iput-object p3, p0, Landroid/window/DesktopExperienceFlags;->mFlagFunction:Ljava/util/function/BooleanSupplier;

    .line 126
    iput-boolean p4, p0, Landroid/window/DesktopExperienceFlags;->mShouldOverrideByDevOption:Z

    .line 127
    return-void
.end method

.method private static blacklist getToggleOverride()Z
    .registers 3

    .line 149
    sget-object v0, Landroid/window/DesktopExperienceFlags;->sCachedToggleOverride:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 150
    sget-object v0, Landroid/window/DesktopExperienceFlags;->sCachedToggleOverride:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 154
    :cond_b
    invoke-static {}, Landroid/window/DesktopExperienceFlags;->getToggleOverrideFromSystem()Z

    move-result v0

    .line 155
    .local v0, "override":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/window/DesktopExperienceFlags;->sCachedToggleOverride:Ljava/lang/Boolean;

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Toggle override initialized to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DesktopExperienceFlags"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v0
.end method

.method private static blacklist getToggleOverrideFromSystem()Z
    .registers 2

    .line 162
    const-string v0, "persist.wm.debug.desktop_experience_devopts"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist isFlagTrue(Ljava/util/function/BooleanSupplier;Z)Z
    .registers 3
    .param p0, "flagFunction"    # Ljava/util/function/BooleanSupplier;
    .param p1, "shouldOverrideByDevOption"    # Z

    .line 139
    if-eqz p1, :cond_10

    .line 140
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->showDesktopExperienceDevOption()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 141
    invoke-static {}, Landroid/window/DesktopExperienceFlags;->getToggleOverride()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 142
    const/4 v0, 0x1

    return v0

    .line 144
    :cond_10
    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    return v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/window/DesktopExperienceFlags;
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

    .line 42
    const-class v0, Landroid/window/DesktopExperienceFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/window/DesktopExperienceFlags;

    return-object v0
.end method

.method public static blacklist values()[Landroid/window/DesktopExperienceFlags;
    .registers 1

    .line 42
    sget-object v0, Landroid/window/DesktopExperienceFlags;->$VALUES:[Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, [Landroid/window/DesktopExperienceFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/window/DesktopExperienceFlags;

    return-object v0
.end method


# virtual methods
.method public blacklist isTrue()Z
    .registers 3

    .line 134
    iget-object v0, p0, Landroid/window/DesktopExperienceFlags;->mFlagFunction:Ljava/util/function/BooleanSupplier;

    iget-boolean v1, p0, Landroid/window/DesktopExperienceFlags;->mShouldOverrideByDevOption:Z

    invoke-static {v0, v1}, Landroid/window/DesktopExperienceFlags;->isFlagTrue(Ljava/util/function/BooleanSupplier;Z)Z

    move-result v0

    return v0
.end method
