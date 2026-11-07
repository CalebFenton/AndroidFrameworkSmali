.class public final Landroid/service/notification/ZenPolicy;
.super Ljava/lang/Object;
.source "ZenPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenPolicy$Builder;,
        Landroid/service/notification/ZenPolicy$ChannelType;,
        Landroid/service/notification/ZenPolicy$State;,
        Landroid/service/notification/ZenPolicy$ConversationSenders;,
        Landroid/service/notification/ZenPolicy$PeopleType;,
        Landroid/service/notification/ZenPolicy$VisualEffect;,
        Landroid/service/notification/ZenPolicy$PriorityCategory;,
        Landroid/service/notification/ZenPolicy$ModifiableField;
    }
.end annotation


# static fields
.field public static final blacklist CHANNEL_POLICY_NONE:I = 0x2

.field public static final blacklist CHANNEL_POLICY_PRIORITY:I = 0x1

.field public static final blacklist CHANNEL_POLICY_UNSET:I = 0x0

.field public static final whitelist CONVERSATION_SENDERS_ANYONE:I = 0x1

.field public static final whitelist CONVERSATION_SENDERS_IMPORTANT:I = 0x2

.field public static final whitelist CONVERSATION_SENDERS_NONE:I = 0x3

.field public static final whitelist CONVERSATION_SENDERS_UNSET:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/ZenPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FIELD_ALLOW_CHANNELS:I = 0x8

.field public static final blacklist FIELD_CALLS:I = 0x2

.field public static final blacklist FIELD_CONVERSATIONS:I = 0x4

.field public static final blacklist FIELD_MESSAGES:I = 0x1

.field public static final blacklist FIELD_PRIORITY_CATEGORY_ALARMS:I = 0x80

.field public static final blacklist FIELD_PRIORITY_CATEGORY_EVENTS:I = 0x20

.field public static final blacklist FIELD_PRIORITY_CATEGORY_MEDIA:I = 0x100

.field public static final blacklist FIELD_PRIORITY_CATEGORY_REMINDERS:I = 0x10

.field public static final blacklist FIELD_PRIORITY_CATEGORY_REPEAT_CALLERS:I = 0x40

.field public static final blacklist FIELD_PRIORITY_CATEGORY_SYSTEM:I = 0x200

.field public static final blacklist FIELD_VISUAL_EFFECT_AMBIENT:I = 0x8000

.field public static final blacklist FIELD_VISUAL_EFFECT_BADGE:I = 0x4000

.field public static final blacklist FIELD_VISUAL_EFFECT_FULL_SCREEN_INTENT:I = 0x400

.field public static final blacklist FIELD_VISUAL_EFFECT_LIGHTS:I = 0x800

.field public static final blacklist FIELD_VISUAL_EFFECT_NOTIFICATION_LIST:I = 0x10000

.field public static final blacklist FIELD_VISUAL_EFFECT_PEEK:I = 0x1000

.field public static final blacklist FIELD_VISUAL_EFFECT_STATUS_BAR:I = 0x2000

.field public static final blacklist NUM_PRIORITY_CATEGORIES:I = 0x9

.field public static final blacklist NUM_VISUAL_EFFECTS:I = 0x7

.field public static final whitelist PEOPLE_TYPE_ANYONE:I = 0x1

.field public static final whitelist PEOPLE_TYPE_CONTACTS:I = 0x2

.field public static final whitelist PEOPLE_TYPE_NONE:I = 0x4

.field public static final whitelist PEOPLE_TYPE_STARRED:I = 0x3

.field public static final whitelist PEOPLE_TYPE_UNSET:I = 0x0

.field public static final blacklist PRIORITY_CATEGORY_ALARMS:I = 0x5

.field public static final blacklist PRIORITY_CATEGORY_CALLS:I = 0x3

.field public static final blacklist PRIORITY_CATEGORY_CONVERSATIONS:I = 0x8

.field public static final blacklist PRIORITY_CATEGORY_EVENTS:I = 0x1

.field public static final blacklist PRIORITY_CATEGORY_MEDIA:I = 0x6

.field public static final blacklist PRIORITY_CATEGORY_MESSAGES:I = 0x2

.field public static final blacklist PRIORITY_CATEGORY_REMINDERS:I = 0x0

.field public static final blacklist PRIORITY_CATEGORY_REPEAT_CALLERS:I = 0x4

.field public static final blacklist PRIORITY_CATEGORY_SYSTEM:I = 0x7

.field public static final whitelist STATE_ALLOW:I = 0x1

.field public static final whitelist STATE_DISALLOW:I = 0x2

.field public static final whitelist STATE_UNSET:I = 0x0

.field public static final blacklist VISUAL_EFFECT_AMBIENT:I = 0x5

.field public static final blacklist VISUAL_EFFECT_BADGE:I = 0x4

.field public static final blacklist VISUAL_EFFECT_FULL_SCREEN_INTENT:I = 0x0

.field public static final blacklist VISUAL_EFFECT_LIGHTS:I = 0x1

.field public static final blacklist VISUAL_EFFECT_NOTIFICATION_LIST:I = 0x6

.field public static final blacklist VISUAL_EFFECT_PEEK:I = 0x2

.field public static final blacklist VISUAL_EFFECT_STATUS_BAR:I = 0x3


# instance fields
.field private blacklist mAllowChannels:I

.field private blacklist mConversationSenders:I

.field private blacklist mPriorityCalls:I

.field private blacklist mPriorityCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPriorityMessages:I

.field private blacklist mVisualEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowChannels(Landroid/service/notification/ZenPolicy;)I
    .registers 1

    iget p0, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConversationSenders(Landroid/service/notification/ZenPolicy;)I
    .registers 1

    iget p0, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPriorityCalls(Landroid/service/notification/ZenPolicy;)I
    .registers 1

    iget p0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPriorityMessages(Landroid/service/notification/ZenPolicy;)I
    .registers 1

    iget p0, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowChannels(Landroid/service/notification/ZenPolicy;I)V
    .registers 2

    iput p1, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConversationSenders(Landroid/service/notification/ZenPolicy;I)V
    .registers 2

    iput p1, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPriorityCalls(Landroid/service/notification/ZenPolicy;I)V
    .registers 2

    iput p1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPriorityMessages(Landroid/service/notification/ZenPolicy;I)V
    .registers 2

    iput p1, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smtrimList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 2

    invoke-static {p0, p1}, Landroid/service/notification/ZenPolicy;->trimList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1053
    new-instance v0, Landroid/service/notification/ZenPolicy$1;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$1;-><init>()V

    sput-object v0, Landroid/service/notification/ZenPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    .line 361
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 151
    iput v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    .line 152
    iput v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    .line 153
    iput v0, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    .line 154
    iput v0, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-static {v2, v1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-static {v2, v1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    .line 363
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;IIII)V
    .registers 8
    .param p3, "priorityMessages"    # I
    .param p4, "priorityCalls"    # I
    .param p5, "conversationSenders"    # I
    .param p6, "allowChannels"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IIII)V"
        }
    .end annotation

    .line 368
    .local p1, "priorityCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "visualEffects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    .line 152
    iput v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    .line 153
    iput v0, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    .line 154
    iput v0, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    .line 369
    iput-object p1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    .line 370
    iput-object p2, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    .line 371
    iput p3, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    .line 372
    iput p4, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    .line 373
    iput p5, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    .line 374
    iput p6, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    .line 375
    return-void
.end method

.method public static blacklist channelTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "channelType"    # I

    .line 1278
    packed-switch p0, :pswitch_data_2c

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalidChannelType{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1284
    :pswitch_1f
    const-string/jumbo v0, "none"

    return-object v0

    .line 1282
    :pswitch_23
    const-string/jumbo v0, "priority"

    return-object v0

    .line 1280
    :pswitch_27
    const-string/jumbo v0, "unset"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method

.method public static blacklist conversationTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "conversationType"    # I

    .line 1261
    packed-switch p0, :pswitch_data_2e

    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalidConversationType{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1267
    :pswitch_1f
    const-string/jumbo v0, "none"

    return-object v0

    .line 1265
    :pswitch_23
    const-string/jumbo v0, "important"

    return-object v0

    .line 1263
    :pswitch_27
    const-string v0, "anyone"

    return-object v0

    .line 1269
    :pswitch_2a
    const-string/jumbo v0, "unset"

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method

.method public static blacklist fieldsToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "bitmask"    # I

    .line 1089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    .local v0, "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 1091
    const-string v1, "FIELD_MESSAGES"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    :cond_e
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_17

    .line 1094
    const-string v1, "FIELD_CALLS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    :cond_17
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_20

    .line 1097
    const-string v1, "FIELD_CONVERSATIONS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    :cond_20
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_29

    .line 1100
    const-string v1, "FIELD_ALLOW_CHANNELS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    :cond_29
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_32

    .line 1103
    const-string v1, "FIELD_PRIORITY_CATEGORY_REMINDERS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    :cond_32
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_3b

    .line 1106
    const-string v1, "FIELD_PRIORITY_CATEGORY_EVENTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    :cond_3b
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_44

    .line 1109
    const-string v1, "FIELD_PRIORITY_CATEGORY_REPEAT_CALLERS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    :cond_44
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_4d

    .line 1112
    const-string v1, "FIELD_PRIORITY_CATEGORY_ALARMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    :cond_4d
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_56

    .line 1115
    const-string v1, "FIELD_PRIORITY_CATEGORY_MEDIA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    :cond_56
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_5f

    .line 1118
    const-string v1, "FIELD_PRIORITY_CATEGORY_SYSTEM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    :cond_5f
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_68

    .line 1121
    const-string v1, "FIELD_VISUAL_EFFECT_FULL_SCREEN_INTENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    :cond_68
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_71

    .line 1124
    const-string v1, "FIELD_VISUAL_EFFECT_LIGHTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    :cond_71
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_7a

    .line 1127
    const-string v1, "FIELD_VISUAL_EFFECT_PEEK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    :cond_7a
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_83

    .line 1130
    const-string v1, "FIELD_VISUAL_EFFECT_STATUS_BAR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    :cond_83
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_8c

    .line 1133
    const-string v1, "FIELD_VISUAL_EFFECT_BADGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    :cond_8c
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_97

    .line 1136
    const-string v1, "FIELD_VISUAL_EFFECT_AMBIENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    :cond_97
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_a1

    .line 1139
    const-string v1, "FIELD_VISUAL_EFFECT_NOTIFICATION_LIST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    :cond_a1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getBasePolicyInterruptionFilterAlarms()Landroid/service/notification/ZenPolicy;
    .registers 2

    .line 389
    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 390
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 391
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 392
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 393
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 389
    return-object v0
.end method

.method public static blacklist getBasePolicyInterruptionFilterNone()Landroid/service/notification/ZenPolicy;
    .registers 2

    .line 409
    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 410
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 411
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 409
    return-object v0
.end method

.method private blacklist getZenPolicyPriorityCategoryState(I)I
    .registers 3
    .param p1, "category"    # I

    .line 1311
    packed-switch p1, :pswitch_data_32

    .line 1331
    const/4 v0, -0x1

    return v0

    .line 1329
    :pswitch_5
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v0

    return v0

    .line 1327
    :pswitch_a
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v0

    return v0

    .line 1325
    :pswitch_f
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v0

    return v0

    .line 1323
    :pswitch_14
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v0

    return v0

    .line 1321
    :pswitch_19
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v0

    return v0

    .line 1319
    :pswitch_1e
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v0

    return v0

    .line 1317
    :pswitch_23
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v0

    return v0

    .line 1315
    :pswitch_28
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v0

    return v0

    .line 1313
    :pswitch_2d
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v0

    return v0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_f
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist getZenPolicyVisualEffectState(I)I
    .registers 3
    .param p1, "effect"    # I

    .line 1335
    packed-switch p1, :pswitch_data_28

    .line 1351
    const/4 v0, -0x1

    return v0

    .line 1349
    :pswitch_5
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v0

    return v0

    .line 1347
    :pswitch_a
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v0

    return v0

    .line 1345
    :pswitch_f
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v0

    return v0

    .line 1343
    :pswitch_14
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v0

    return v0

    .line 1341
    :pswitch_19
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v0

    return v0

    .line 1339
    :pswitch_1e
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v0

    return v0

    .line 1337
    :pswitch_23
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v0

    return v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_f
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist indexToCategory(I)Ljava/lang/String;
    .registers 3
    .param p1, "categoryIndex"    # I

    .line 1203
    packed-switch p1, :pswitch_data_26

    .line 1223
    const/4 v0, 0x0

    return-object v0

    .line 1221
    :pswitch_5
    const-string v0, "convs"

    return-object v0

    .line 1219
    :pswitch_8
    const-string/jumbo v0, "system"

    return-object v0

    .line 1217
    :pswitch_c
    const-string/jumbo v0, "media"

    return-object v0

    .line 1215
    :pswitch_10
    const-string v0, "alarms"

    return-object v0

    .line 1213
    :pswitch_13
    const-string/jumbo v0, "repeatCallers"

    return-object v0

    .line 1211
    :pswitch_17
    const-string v0, "calls"

    return-object v0

    .line 1209
    :pswitch_1a
    const-string/jumbo v0, "messages"

    return-object v0

    .line 1207
    :pswitch_1e
    const-string v0, "events"

    return-object v0

    .line 1205
    :pswitch_21
    const-string/jumbo v0, "reminders"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist indexToVisualEffect(I)Ljava/lang/String;
    .registers 3
    .param p1, "visualEffectIndex"    # I

    .line 1183
    packed-switch p1, :pswitch_data_1e

    .line 1199
    const/4 v0, 0x0

    return-object v0

    .line 1197
    :pswitch_5
    const-string/jumbo v0, "notificationList"

    return-object v0

    .line 1195
    :pswitch_9
    const-string v0, "ambient"

    return-object v0

    .line 1193
    :pswitch_c
    const-string v0, "badge"

    return-object v0

    .line 1191
    :pswitch_f
    const-string/jumbo v0, "statusBar"

    return-object v0

    .line 1189
    :pswitch_13
    const-string/jumbo v0, "peek"

    return-object v0

    .line 1187
    :pswitch_17
    const-string/jumbo v0, "lights"

    return-object v0

    .line 1185
    :pswitch_1b
    const-string v0, "fullScreenIntent"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist peopleTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "peopleType"    # I

    .line 1242
    packed-switch p0, :pswitch_data_32

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalidPeopleType{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1248
    :pswitch_1f
    const-string/jumbo v0, "none"

    return-object v0

    .line 1250
    :pswitch_23
    const-string/jumbo v0, "starred_contacts"

    return-object v0

    .line 1246
    :pswitch_27
    const-string v0, "contacts"

    return-object v0

    .line 1244
    :pswitch_2a
    const-string v0, "anyone"

    return-object v0

    .line 1252
    :pswitch_2d
    const-string/jumbo v0, "unset"

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method

.method private blacklist priorityCategoriesToString()Ljava/lang/String;
    .registers 5

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1156
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 1157
    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_43

    .line 1158
    invoke-direct {p0, v1}, Landroid/service/notification/ZenPolicy;->indexToCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1159
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    .line 1160
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/service/notification/ZenPolicy;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1161
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1165
    .end local v1    # "i":I
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist stateToBoolean(IZ)Z
    .registers 3
    .param p0, "state"    # I
    .param p1, "defaultVal"    # Z

    .line 1356
    packed-switch p0, :pswitch_data_8

    .line 1362
    return p1

    .line 1360
    :pswitch_4
    const/4 v0, 0x0

    return v0

    .line 1358
    :pswitch_6
    const/4 v0, 0x1

    return v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private blacklist stateToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "state"    # I

    .line 1227
    packed-switch p1, :pswitch_data_2a

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalidState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1231
    :pswitch_1f
    const-string v0, "disallow"

    return-object v0

    .line 1233
    :pswitch_22
    const-string v0, "allow"

    return-object v0

    .line 1229
    :pswitch_25
    const-string/jumbo v0, "unset"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method

.method private static blacklist trimList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "maxLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1148
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_9

    goto :goto_14

    .line 1151
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 1149
    :cond_14
    :goto_14
    return-object p0
.end method

.method private blacklist visualEffectsToString()Ljava/lang/String;
    .registers 5

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1170
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 1171
    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_43

    .line 1172
    invoke-direct {p0, v1}, Landroid/service/notification/ZenPolicy;->indexToVisualEffect(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1173
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    .line 1174
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/service/notification/ZenPolicy;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1175
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1179
    .end local v1    # "i":I
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist apply(Landroid/service/notification/ZenPolicy;)V
    .registers 7
    .param p1, "policyToApply"    # Landroid/service/notification/ZenPolicy;

    .line 1384
    if-nez p1, :cond_3

    .line 1385
    return-void

    .line 1389
    :cond_3
    const/4 v0, 0x0

    .local v0, "category":I
    :goto_4
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_5f

    .line 1390
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1c

    .line 1392
    goto :goto_5c

    .line 1395
    :cond_1c
    iget-object v1, p1, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1396
    .local v1, "newState":I
    if-eqz v1, :cond_5c

    .line 1397
    iget-object v3, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1399
    if-ne v0, v2, :cond_40

    iget v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    iget v3, p1, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    if-ge v2, v3, :cond_40

    .line 1401
    iget v2, p1, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    iput v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    goto :goto_5c

    .line 1402
    :cond_40
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4e

    iget v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    iget v3, p1, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    if-ge v2, v3, :cond_4e

    .line 1404
    iget v2, p1, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    iput v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    goto :goto_5c

    .line 1405
    :cond_4e
    const/16 v2, 0x8

    if-ne v0, v2, :cond_5c

    iget v2, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    iget v3, p1, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    if-ge v2, v3, :cond_5c

    .line 1407
    iget v2, p1, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    iput v2, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    .line 1389
    .end local v1    # "newState":I
    :cond_5c
    :goto_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1413
    .end local v0    # "category":I
    :cond_5f
    const/4 v0, 0x0

    .local v0, "visualEffect":I
    :goto_60
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_95

    .line 1414
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_77

    .line 1416
    goto :goto_92

    .line 1419
    :cond_77
    iget-object v1, p1, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_92

    .line 1420
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    iget-object v3, p1, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1413
    :cond_92
    :goto_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 1425
    .end local v0    # "visualEffect":I
    :cond_95
    iget v0, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    if-eq v0, v2, :cond_a1

    iget v0, p1, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    if-eqz v0, :cond_a1

    .line 1427
    iget v0, p1, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    iput v0, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    .line 1429
    :cond_a1
    return-void
.end method

.method public blacklist copy()Landroid/service/notification/ZenPolicy;
    .registers 3

    .line 1547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1549
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenPolicy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1550
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1551
    sget-object v1, Landroid/service/notification/ZenPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenPolicy;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    .line 1553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1551
    return-object v1

    .line 1553
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1554
    throw v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1040
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1482
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1484
    .local v0, "token":J
    const-wide v2, 0x10e00000001L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1485
    const-wide v2, 0x10e00000002L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1486
    const-wide v2, 0x10e00000003L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1487
    const-wide v2, 0x10e00000004L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1488
    const-wide v2, 0x10e00000005L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1489
    const-wide v2, 0x10e00000006L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1490
    const-wide v2, 0x10e00000007L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1491
    const-wide v2, 0x10e00000008L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1493
    const-wide v2, 0x10e00000009L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1494
    const-wide v2, 0x10e0000000aL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1495
    const-wide v2, 0x10e0000000bL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1496
    const-wide v2, 0x10e0000000cL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1497
    const-wide v2, 0x10e0000000dL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1498
    const-wide v2, 0x10e0000000eL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1499
    const-wide v2, 0x10e0000000fL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1501
    const-wide v2, 0x10e00000011L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1502
    const-wide v2, 0x10e00000010L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1503
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1504
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1291
    instance-of v0, p1, Landroid/service/notification/ZenPolicy;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1292
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 1293
    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/service/notification/ZenPolicy;

    .line 1295
    .local v2, "other":Landroid/service/notification/ZenPolicy;
    iget-object v3, v2, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    iget-object v4, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v3, v2, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    iget-object v4, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    .line 1296
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget v3, v2, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    iget v4, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    if-ne v3, v4, :cond_3b

    iget v3, v2, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    iget v4, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    if-ne v3, v4, :cond_3b

    iget v3, v2, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    iget v4, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    if-ne v3, v4, :cond_3b

    iget v3, v2, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    iget v4, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    if-ne v3, v4, :cond_3b

    move v1, v0

    goto :goto_3c

    :cond_3b
    nop

    .line 1295
    :goto_3c
    return v1
.end method

.method public blacklist getAllowedChannels()I
    .registers 2

    .line 596
    iget v0, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    return v0
.end method

.method public whitelist getPriorityCallSenders()I
    .registers 2

    .line 439
    iget v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    return v0
.end method

.method public whitelist getPriorityCategoryAlarms()I
    .registers 3

    .line 513
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryCalls()I
    .registers 3

    .line 491
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryConversations()I
    .registers 3

    .line 449
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryEvents()I
    .registers 3

    .line 469
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryMedia()I
    .registers 3

    .line 524
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryMessages()I
    .registers 3

    .line 480
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryReminders()I
    .registers 3

    .line 459
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryRepeatCallers()I
    .registers 3

    .line 501
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategorySystem()I
    .registers 3

    .line 533
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityChannelsAllowed()I
    .registers 2

    .line 606
    iget v0, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    packed-switch v0, :pswitch_data_c

    .line 612
    const/4 v0, 0x0

    return v0

    .line 610
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 608
    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method public whitelist getPriorityConversationSenders()I
    .registers 2

    .line 421
    iget v0, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    return v0
.end method

.method public whitelist getPriorityMessageSenders()I
    .registers 2

    .line 430
    iget v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    return v0
.end method

.method public whitelist getVisualEffectAmbient()I
    .registers 3

    .line 580
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectBadge()I
    .registers 3

    .line 572
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectFullScreenIntent()I
    .registers 3

    .line 541
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectLights()I
    .registers 3

    .line 549
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectNotificationList()I
    .registers 3

    .line 589
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectPeek()I
    .registers 3

    .line 556
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectStatusBar()I
    .registers 3

    .line 564
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 1305
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    iget v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    .line 1306
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 1305
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isCategoryAllowed(IZ)Z
    .registers 4
    .param p1, "category"    # I
    .param p2, "defaultVal"    # Z

    .line 1368
    invoke-direct {p0, p1}, Landroid/service/notification/ZenPolicy;->getZenPolicyPriorityCategoryState(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/service/notification/ZenPolicy;->stateToBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public blacklist isVisualEffectAllowed(IZ)Z
    .registers 4
    .param p1, "effect"    # I
    .param p2, "defaultVal"    # Z

    .line 1373
    invoke-direct {p0, p1}, Landroid/service/notification/ZenPolicy;->getZenPolicyVisualEffectState(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/service/notification/ZenPolicy;->stateToBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public blacklist overwrittenWith(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;
    .registers 7
    .param p1, "newPolicy"    # Landroid/service/notification/ZenPolicy;

    .line 1441
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 1443
    .local v0, "result":Landroid/service/notification/ZenPolicy;
    if-nez p1, :cond_7

    .line 1444
    return-object v0

    .line 1448
    :cond_7
    const/4 v1, 0x0

    .local v1, "category":I
    :goto_8
    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 1449
    iget-object v2, p1, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1450
    .local v2, "newState":I
    if-eqz v2, :cond_3f

    .line 1451
    iget-object v3, v0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1453
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2f

    .line 1454
    iget v3, p1, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    iput v3, v0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    goto :goto_3f

    .line 1455
    :cond_2f
    const/4 v3, 0x3

    if-ne v1, v3, :cond_37

    .line 1456
    iget v3, p1, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    iput v3, v0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    goto :goto_3f

    .line 1457
    :cond_37
    const/16 v3, 0x8

    if-ne v1, v3, :cond_3f

    .line 1458
    iget v3, p1, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    iput v3, v0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    .line 1448
    .end local v2    # "newState":I
    :cond_3f
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1464
    .end local v1    # "category":I
    :cond_42
    const/4 v1, 0x0

    .local v1, "visualEffect":I
    :goto_43
    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_69

    .line 1465
    iget-object v2, p1, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_66

    .line 1466
    iget-object v2, v0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    iget-object v3, p1, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1464
    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 1471
    .end local v1    # "visualEffect":I
    :cond_69
    iget v1, p1, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    if-eqz v1, :cond_71

    .line 1472
    iget v1, p1, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    iput v1, v0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    .line 1475
    :cond_71
    return-object v0
.end method

.method public blacklist shouldHideAllVisualEffects()Z
    .registers 4

    .line 621
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 622
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    .line 623
    const/4 v1, 0x0

    return v1

    .line 621
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 626
    .end local v0    # "i":I
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist shouldShowAllVisualEffects()Z
    .registers 4

    .line 634
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1d

    .line 635
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_1a

    .line 636
    const/4 v1, 0x0

    return v1

    .line 634
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 639
    .end local v0    # "i":I
    :cond_1d
    return v2
.end method

.method public blacklist toProto()[B
    .registers 6

    .line 1512
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1513
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1515
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v2, 0x10e00000001L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1516
    const-wide v2, 0x10e00000002L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1517
    const-wide v2, 0x10e00000003L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1518
    const-wide v2, 0x10e00000004L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1519
    const-wide v2, 0x10e00000005L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1520
    const-wide v2, 0x10e00000006L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1521
    const-wide v2, 0x10e00000007L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1522
    const-wide v2, 0x10e00000008L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1523
    const-wide v2, 0x10e00000009L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1525
    const-wide v2, 0x10e0000000aL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1526
    const-wide v2, 0x10e0000000bL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1527
    const-wide v2, 0x10e0000000cL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1528
    const-wide v2, 0x10e0000000dL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1529
    const-wide v2, 0x10e0000000eL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1530
    const-wide v2, 0x10e0000000fL

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1531
    const-wide v2, 0x10e00000010L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1533
    const-wide v2, 0x10e00000011L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1534
    const-wide v2, 0x10e00000012L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1535
    const-wide v2, 0x10e00000013L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1536
    const-wide v2, 0x10e00000014L

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1538
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1539
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/ZenPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1076
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1077
    const-string/jumbo v1, "priorityCategories=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/service/notification/ZenPolicy;->priorityCategoriesToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1078
    const-string v1, "], visualEffects=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/service/notification/ZenPolicy;->visualEffectsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1079
    const-string v1, "], priorityCallsSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->peopleTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1080
    const-string v1, ", priorityMessagesSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->peopleTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1081
    const-string v1, ", priorityConversationSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    .line 1082
    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->conversationTypeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1081
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1083
    const-string v1, ", allowChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->channelTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1084
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1075
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1045
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1046
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1047
    iget v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    iget v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    iget v0, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    iget v0, p0, Landroid/service/notification/ZenPolicy;->mAllowChannels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1051
    return-void
.end method
