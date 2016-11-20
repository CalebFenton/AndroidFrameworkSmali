.class Lcom/android/server/am/ActivityManagerDebugConfig;
.super Ljava/lang/Object;
.source "ActivityManagerDebugConfig.java"


# static fields
.field static final APPEND_CATEGORY_NAME:Z = false

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_ALL:Z = false

.field static final DEBUG_ALL_ACTIVITIES:Z = false

.field static final DEBUG_ANR:Z = false

.field static final DEBUG_APP:Z = false

.field static final DEBUG_BACKUP:Z = false

.field static final DEBUG_BROADCAST:Z = false

.field static final DEBUG_BROADCAST_BACKGROUND:Z = false

.field static final DEBUG_BROADCAST_LIGHT:Z = false

.field static final DEBUG_CLEANUP:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_CONTAINERS:Z = false

.field static final DEBUG_FOCUS:Z = false

.field static final DEBUG_IDLE:Z = false

.field static final DEBUG_IMMERSIVE:Z = false

.field static final DEBUG_LOCKSCREEN:Z = false

.field static final DEBUG_LOCKTASK:Z = false

.field static final DEBUG_LRU:Z = false

.field static final DEBUG_MU:Z = false

.field static final DEBUG_OOM_ADJ:Z = false

.field static final DEBUG_PAUSE:Z = false

.field static final DEBUG_PERMISSIONS_REVIEW:Z = false

.field static final DEBUG_POWER:Z = false

.field static final DEBUG_POWER_QUICK:Z = false

.field static final DEBUG_PROCESSES:Z = false

.field static final DEBUG_PROCESS_OBSERVERS:Z = false

.field static final DEBUG_PROVIDER:Z = false

.field static final DEBUG_PSS:Z = false

.field static final DEBUG_RECENTS:Z = false

.field static final DEBUG_RELEASE:Z = false

.field static final DEBUG_RESULTS:Z = false

.field static final DEBUG_SAVED_STATE:Z = false

.field static final DEBUG_SCREENSHOTS:Z = false

.field static final DEBUG_SERVICE:Z = false

.field static final DEBUG_SERVICE_EXECUTING:Z = false

.field static final DEBUG_STACK:Z = false

.field static final DEBUG_STATES:Z = false

.field static final DEBUG_SWITCH:Z = false

.field static final DEBUG_TASKS:Z = false

.field static final DEBUG_THUMBNAILS:Z = false

.field static final DEBUG_TRANSITION:Z = false

.field static final DEBUG_UID_OBSERVERS:Z = false

.field static final DEBUG_URI_PERMISSION:Z = false

.field static final DEBUG_USAGE_STATS:Z = false

.field static final DEBUG_USER_LEAVING:Z = false

.field static final DEBUG_VISIBILITY:Z = false

.field static final DEBUG_VISIBLE_BEHIND:Z = false

.field static final DEBUG_WHITELISTS:Z = false

.field static final POSTFIX_ADD_REMOVE:Ljava/lang/String;

.field static final POSTFIX_APP:Ljava/lang/String;

.field static final POSTFIX_BACKUP:Ljava/lang/String;

.field static final POSTFIX_BROADCAST:Ljava/lang/String;

.field static final POSTFIX_CLEANUP:Ljava/lang/String;

.field static final POSTFIX_CONFIGURATION:Ljava/lang/String;

.field static final POSTFIX_CONTAINERS:Ljava/lang/String;

.field static final POSTFIX_FOCUS:Ljava/lang/String;

.field static final POSTFIX_IDLE:Ljava/lang/String;

.field static final POSTFIX_IMMERSIVE:Ljava/lang/String;

.field static final POSTFIX_LOCKSCREEN:Ljava/lang/String;

.field static final POSTFIX_LOCKTASK:Ljava/lang/String;

.field static final POSTFIX_LRU:Ljava/lang/String;

.field static final POSTFIX_MU:Ljava/lang/String; = "_MU"

.field static final POSTFIX_OOM_ADJ:Ljava/lang/String;

.field static final POSTFIX_PAUSE:Ljava/lang/String;

.field static final POSTFIX_POWER:Ljava/lang/String;

.field static final POSTFIX_PROCESSES:Ljava/lang/String;

.field static final POSTFIX_PROCESS_OBSERVERS:Ljava/lang/String;

.field static final POSTFIX_PROVIDER:Ljava/lang/String;

.field static final POSTFIX_PSS:Ljava/lang/String;

.field static final POSTFIX_RECENTS:Ljava/lang/String;

.field static final POSTFIX_RELEASE:Ljava/lang/String;

.field static final POSTFIX_RESULTS:Ljava/lang/String;

.field static final POSTFIX_SAVED_STATE:Ljava/lang/String;

.field static final POSTFIX_SCREENSHOTS:Ljava/lang/String;

.field static final POSTFIX_SERVICE:Ljava/lang/String;

.field static final POSTFIX_SERVICE_EXECUTING:Ljava/lang/String;

.field static final POSTFIX_STACK:Ljava/lang/String;

.field static final POSTFIX_STATES:Ljava/lang/String;

.field static final POSTFIX_SWITCH:Ljava/lang/String;

.field static final POSTFIX_TASKS:Ljava/lang/String;

.field static final POSTFIX_THUMBNAILS:Ljava/lang/String;

.field static final POSTFIX_TRANSITION:Ljava/lang/String;

.field static final POSTFIX_UID_OBSERVERS:Ljava/lang/String;

.field static final POSTFIX_URI_PERMISSION:Ljava/lang/String;

.field static final POSTFIX_USER_LEAVING:Ljava/lang/String;

.field static final POSTFIX_VISIBILITY:Ljava/lang/String;

.field static final POSTFIX_VISIBLE_BEHIND:Ljava/lang/String;

.field static final TAG_AM:Ljava/lang/String; = "ActivityManager"

.field static final TAG_WITH_CLASS_NAME:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 95
    const-string/jumbo v0, ""

    #@3
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_ADD_REMOVE:Ljava/lang/String;

    #@5
    .line 96
    const-string/jumbo v0, ""

    #@8
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_APP:Ljava/lang/String;

    #@a
    .line 97
    const-string/jumbo v0, ""

    #@d
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_BACKUP:Ljava/lang/String;

    #@f
    .line 98
    const-string/jumbo v0, ""

    #@12
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_BROADCAST:Ljava/lang/String;

    #@14
    .line 99
    const-string/jumbo v0, ""

    #@17
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CLEANUP:Ljava/lang/String;

    #@19
    .line 100
    const-string/jumbo v0, ""

    #@1c
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONFIGURATION:Ljava/lang/String;

    #@1e
    .line 101
    const-string/jumbo v0, ""

    #@21
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONTAINERS:Ljava/lang/String;

    #@23
    .line 102
    const-string/jumbo v0, ""

    #@26
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_FOCUS:Ljava/lang/String;

    #@28
    .line 103
    const-string/jumbo v0, ""

    #@2b
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_IDLE:Ljava/lang/String;

    #@2d
    .line 104
    const-string/jumbo v0, ""

    #@30
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_IMMERSIVE:Ljava/lang/String;

    #@32
    .line 105
    const-string/jumbo v0, ""

    #@35
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_LOCKSCREEN:Ljava/lang/String;

    #@37
    .line 106
    const-string/jumbo v0, ""

    #@3a
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_LOCKTASK:Ljava/lang/String;

    #@3c
    .line 107
    const-string/jumbo v0, ""

    #@3f
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_LRU:Ljava/lang/String;

    #@41
    .line 109
    const-string/jumbo v0, ""

    #@44
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_OOM_ADJ:Ljava/lang/String;

    #@46
    .line 110
    const-string/jumbo v0, ""

    #@49
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PAUSE:Ljava/lang/String;

    #@4b
    .line 111
    const-string/jumbo v0, ""

    #@4e
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_POWER:Ljava/lang/String;

    #@50
    .line 113
    const-string/jumbo v0, ""

    #@53
    .line 112
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PROCESS_OBSERVERS:Ljava/lang/String;

    #@55
    .line 114
    const-string/jumbo v0, ""

    #@58
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PROCESSES:Ljava/lang/String;

    #@5a
    .line 115
    const-string/jumbo v0, ""

    #@5d
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PROVIDER:Ljava/lang/String;

    #@5f
    .line 116
    const-string/jumbo v0, ""

    #@62
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PSS:Ljava/lang/String;

    #@64
    .line 117
    const-string/jumbo v0, ""

    #@67
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RECENTS:Ljava/lang/String;

    #@69
    .line 118
    const-string/jumbo v0, ""

    #@6c
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RELEASE:Ljava/lang/String;

    #@6e
    .line 119
    const-string/jumbo v0, ""

    #@71
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RESULTS:Ljava/lang/String;

    #@73
    .line 120
    const-string/jumbo v0, ""

    #@76
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SAVED_STATE:Ljava/lang/String;

    #@78
    .line 121
    const-string/jumbo v0, ""

    #@7b
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SCREENSHOTS:Ljava/lang/String;

    #@7d
    .line 122
    const-string/jumbo v0, ""

    #@80
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SERVICE:Ljava/lang/String;

    #@82
    .line 124
    const-string/jumbo v0, ""

    #@85
    .line 123
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SERVICE_EXECUTING:Ljava/lang/String;

    #@87
    .line 125
    const-string/jumbo v0, ""

    #@8a
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_STACK:Ljava/lang/String;

    #@8c
    .line 126
    const-string/jumbo v0, ""

    #@8f
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_STATES:Ljava/lang/String;

    #@91
    .line 127
    const-string/jumbo v0, ""

    #@94
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SWITCH:Ljava/lang/String;

    #@96
    .line 128
    const-string/jumbo v0, ""

    #@99
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TASKS:Ljava/lang/String;

    #@9b
    .line 129
    const-string/jumbo v0, ""

    #@9e
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_THUMBNAILS:Ljava/lang/String;

    #@a0
    .line 130
    const-string/jumbo v0, ""

    #@a3
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TRANSITION:Ljava/lang/String;

    #@a5
    .line 132
    const-string/jumbo v0, ""

    #@a8
    .line 131
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_UID_OBSERVERS:Ljava/lang/String;

    #@aa
    .line 133
    const-string/jumbo v0, ""

    #@ad
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_URI_PERMISSION:Ljava/lang/String;

    #@af
    .line 134
    const-string/jumbo v0, ""

    #@b2
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_USER_LEAVING:Ljava/lang/String;

    #@b4
    .line 135
    const-string/jumbo v0, ""

    #@b7
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_VISIBILITY:Ljava/lang/String;

    #@b9
    .line 136
    const-string/jumbo v0, ""

    #@bc
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_VISIBLE_BEHIND:Ljava/lang/String;

    #@be
    .line 23
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
