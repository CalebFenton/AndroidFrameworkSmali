.class public Landroid/app/NotificationManager$Policy;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationManager$Policy$ConversationSenders;,
        Landroid/app/NotificationManager$Policy$PrioritySenders;
    }
.end annotation


# static fields
.field public static final greylist-max-o ALL_PRIORITY_CATEGORIES:[I

.field private static final greylist-max-o ALL_SUPPRESSED_EFFECTS:[I

.field public static final whitelist CONVERSATION_SENDERS_ANYONE:I = 0x1

.field public static final whitelist CONVERSATION_SENDERS_IMPORTANT:I = 0x2

.field public static final whitelist CONVERSATION_SENDERS_NONE:I = 0x3

.field public static final blacklist CONVERSATION_SENDERS_UNSET:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/NotificationManager$Policy;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PRIORITY_CATEGORY_ALARMS:I = 0x20

.field public static final whitelist PRIORITY_CATEGORY_CALLS:I = 0x8

.field public static final whitelist PRIORITY_CATEGORY_CONVERSATIONS:I = 0x100

.field public static final whitelist PRIORITY_CATEGORY_EVENTS:I = 0x2

.field public static final whitelist PRIORITY_CATEGORY_MEDIA:I = 0x40

.field public static final whitelist PRIORITY_CATEGORY_MESSAGES:I = 0x4

.field public static final whitelist PRIORITY_CATEGORY_REMINDERS:I = 0x1

.field public static final whitelist PRIORITY_CATEGORY_REPEAT_CALLERS:I = 0x10

.field public static final whitelist PRIORITY_CATEGORY_SYSTEM:I = 0x80

.field public static final whitelist PRIORITY_SENDERS_ANY:I = 0x0

.field public static final whitelist PRIORITY_SENDERS_CONTACTS:I = 0x1

.field public static final whitelist PRIORITY_SENDERS_STARRED:I = 0x2

.field public static final blacklist STATE_HAS_PRIORITY_CHANNELS:I = 0x1

.field public static final blacklist STATE_PRIORITY_CHANNELS_BLOCKED:I = 0x2

.field public static final greylist-max-o STATE_UNSET:I = -0x1

.field public static final greylist-max-o SUPPRESSED_EFFECTS_UNSET:I = -0x1

.field public static final whitelist SUPPRESSED_EFFECT_AMBIENT:I = 0x80

.field public static final whitelist SUPPRESSED_EFFECT_BADGE:I = 0x40

.field public static final whitelist SUPPRESSED_EFFECT_FULL_SCREEN_INTENT:I = 0x4

.field public static final whitelist SUPPRESSED_EFFECT_LIGHTS:I = 0x8

.field public static final whitelist SUPPRESSED_EFFECT_NOTIFICATION_LIST:I = 0x100

.field public static final whitelist SUPPRESSED_EFFECT_PEEK:I = 0x10

.field public static final whitelist SUPPRESSED_EFFECT_SCREEN_OFF:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUPPRESSED_EFFECT_SCREEN_ON:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUPPRESSED_EFFECT_STATUS_BAR:I = 0x20


# instance fields
.field public final whitelist priorityCallSenders:I

.field public final whitelist priorityCategories:I

.field public final whitelist priorityConversationSenders:I

.field public final whitelist priorityMessageSenders:I

.field public final greylist-max-o state:I

.field public final whitelist suppressedVisualEffects:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2532
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_18

    sput-object v1, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    .line 2676
    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    .line 3107
    new-instance v0, Landroid/app/NotificationManager$Policy$1;

    invoke-direct {v0}, Landroid/app/NotificationManager$Policy$1;-><init>()V

    sput-object v0, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_18
    .array-data 4
        0x20
        0x40
        0x80
        0x1
        0x2
        0x4
        0x8
        0x10
        0x100
    .end array-data

    :array_2e
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public constructor whitelist <init>(III)V
    .registers 11
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I

    .line 2733
    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "priorityCategories":I
    .end local p2    # "priorityCallSenders":I
    .end local p3    # "priorityMessageSenders":I
    .local v1, "priorityCategories":I
    .local v2, "priorityCallSenders":I
    .local v3, "priorityMessageSenders":I
    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    .line 2735
    return-void
.end method

.method public constructor whitelist <init>(IIII)V
    .registers 12
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I

    .line 2767
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "priorityCategories":I
    .end local p2    # "priorityCallSenders":I
    .end local p3    # "priorityMessageSenders":I
    .end local p4    # "suppressedVisualEffects":I
    .local v1, "priorityCategories":I
    .local v2, "priorityCallSenders":I
    .local v3, "priorityMessageSenders":I
    .local v4, "suppressedVisualEffects":I
    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    .line 2769
    return-void
.end method

.method public constructor whitelist <init>(IIIII)V
    .registers 13
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I
    .param p5, "priorityConversationSenders"    # I

    .line 2810
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .end local p1    # "priorityCategories":I
    .end local p2    # "priorityCallSenders":I
    .end local p3    # "priorityMessageSenders":I
    .end local p4    # "suppressedVisualEffects":I
    .end local p5    # "priorityConversationSenders":I
    .local v1, "priorityCategories":I
    .local v2, "priorityCallSenders":I
    .local v3, "priorityMessageSenders":I
    .local v4, "suppressedVisualEffects":I
    .local v6, "priorityConversationSenders":I
    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    .line 2812
    return-void
.end method

.method public constructor blacklist <init>(IIIIII)V
    .registers 7
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I
    .param p5, "state"    # I
    .param p6, "priorityConversationSenders"    # I

    .line 2816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2817
    iput p1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 2818
    iput p2, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 2819
    iput p3, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 2820
    iput p4, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2821
    iput p5, p0, Landroid/app/NotificationManager$Policy;->state:I

    .line 2822
    iput p6, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 2823
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2828
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2829
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2828
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    .line 2830
    return-void
.end method

.method public static greylist-max-o areAllVisualEffectsSuppressed(I)Z
    .registers 4
    .param p0, "effects"    # I

    .line 2983
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 2984
    sget-object v1, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    aget v1, v1, v0

    .line 2985
    .local v1, "effect":I
    and-int v2, p0, v1

    if-nez v2, :cond_10

    .line 2986
    const/4 v2, 0x0

    return v2

    .line 2983
    .end local v1    # "effect":I
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2989
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 7
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "data"    # I

    .line 2961
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-lez p3, :cond_10

    .line 2962
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 2963
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2961
    :cond_b
    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 2966
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public static blacklist conversationSendersToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "priorityConversationSenders"    # I

    .line 3094
    packed-switch p0, :pswitch_data_2e

    .line 3104
    :pswitch_3
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

    .line 3100
    :pswitch_1f
    const-string/jumbo v0, "none"

    return-object v0

    .line 3098
    :pswitch_23
    const-string/jumbo v0, "important"

    return-object v0

    .line 3096
    :pswitch_27
    const-string v0, "anyone"

    return-object v0

    .line 3102
    :pswitch_2a
    const-string/jumbo v0, "unset"

    return-object v0

    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_2a
        :pswitch_3
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method

.method private static greylist-max-o effectToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "effect"    # I

    .line 3041
    sparse-switch p0, :sswitch_data_36

    .line 3062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3055
    :sswitch_17
    const-string v0, "SUPPRESSED_EFFECT_NOTIFICATION_LIST"

    return-object v0

    .line 3053
    :sswitch_1a
    const-string v0, "SUPPRESSED_EFFECT_AMBIENT"

    return-object v0

    .line 3051
    :sswitch_1d
    const-string v0, "SUPPRESSED_EFFECT_BADGE"

    return-object v0

    .line 3049
    :sswitch_20
    const-string v0, "SUPPRESSED_EFFECT_STATUS_BAR"

    return-object v0

    .line 3047
    :sswitch_23
    const-string v0, "SUPPRESSED_EFFECT_PEEK"

    return-object v0

    .line 3045
    :sswitch_26
    const-string v0, "SUPPRESSED_EFFECT_LIGHTS"

    return-object v0

    .line 3043
    :sswitch_29
    const-string v0, "SUPPRESSED_EFFECT_FULL_SCREEN_INTENT"

    return-object v0

    .line 3059
    :sswitch_2c
    const-string v0, "SUPPRESSED_EFFECT_SCREEN_ON"

    return-object v0

    .line 3057
    :sswitch_2f
    const-string v0, "SUPPRESSED_EFFECT_SCREEN_OFF"

    return-object v0

    .line 3061
    :sswitch_32
    const-string v0, "SUPPRESSED_EFFECTS_UNSET"

    return-object v0

    nop

    :sswitch_data_36
    .sparse-switch
        -0x1 -> :sswitch_32
        0x1 -> :sswitch_2f
        0x2 -> :sswitch_2c
        0x4 -> :sswitch_29
        0x8 -> :sswitch_26
        0x10 -> :sswitch_23
        0x20 -> :sswitch_20
        0x40 -> :sswitch_1d
        0x80 -> :sswitch_1a
        0x100 -> :sswitch_17
    .end sparse-switch
.end method

.method public static greylist-max-o getAllSuppressedVisualEffects()I
    .registers 3

    .line 2972
    const/4 v0, 0x0

    .line 2973
    .local v0, "effects":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_f

    .line 2974
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    aget v2, v2, v1

    or-int/2addr v0, v2

    .line 2973
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2976
    .end local v1    # "i":I
    :cond_f
    return v0
.end method

.method public static blacklist policyState(ZZ)I
    .registers 3
    .param p0, "hasPriorityChannels"    # Z
    .param p1, "allowPriorityChannels"    # Z

    .line 3234
    const/4 v0, 0x0

    .line 3235
    .local v0, "state":I
    if-eqz p0, :cond_5

    .line 3236
    or-int/lit8 v0, v0, 0x1

    .line 3238
    :cond_5
    if-nez p1, :cond_9

    .line 3239
    or-int/lit8 v0, v0, 0x2

    .line 3241
    :cond_9
    return v0
.end method

.method public static whitelist priorityCategoriesToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "priorityCategories"    # I

    .line 3023
    if-nez p0, :cond_5

    const-string v0, ""

    return-object v0

    .line 3024
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3025
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    array-length v2, v2

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_2f

    .line 3026
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    aget v2, v2, v1

    .line 3027
    .local v2, "priorityCategory":I
    and-int v4, p0, v2

    if-eqz v4, :cond_2a

    .line 3028
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3029
    :cond_23
    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->priorityCategoryToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3031
    :cond_2a
    not-int v3, v2

    and-int/2addr p0, v3

    .line 3025
    .end local v2    # "priorityCategory":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 3033
    .end local v1    # "i":I
    :cond_2f
    if-eqz p0, :cond_43

    .line 3034
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3035
    :cond_3a
    const-string v1, "PRIORITY_CATEGORY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3037
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o priorityCategoryToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "priorityCategory"    # I

    .line 3067
    sparse-switch p0, :sswitch_data_32

    .line 3077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRIORITY_CATEGORY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3076
    :sswitch_17
    const-string v0, "PRIORITY_CATEGORY_CONVERSATIONS"

    return-object v0

    .line 3075
    :sswitch_1a
    const-string v0, "PRIORITY_CATEGORY_SYSTEM"

    return-object v0

    .line 3074
    :sswitch_1d
    const-string v0, "PRIORITY_CATEGORY_MEDIA"

    return-object v0

    .line 3073
    :sswitch_20
    const-string v0, "PRIORITY_CATEGORY_ALARMS"

    return-object v0

    .line 3072
    :sswitch_23
    const-string v0, "PRIORITY_CATEGORY_REPEAT_CALLERS"

    return-object v0

    .line 3071
    :sswitch_26
    const-string v0, "PRIORITY_CATEGORY_CALLS"

    return-object v0

    .line 3070
    :sswitch_29
    const-string v0, "PRIORITY_CATEGORY_MESSAGES"

    return-object v0

    .line 3069
    :sswitch_2c
    const-string v0, "PRIORITY_CATEGORY_EVENTS"

    return-object v0

    .line 3068
    :sswitch_2f
    const-string v0, "PRIORITY_CATEGORY_REMINDERS"

    return-object v0

    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_2f
        0x2 -> :sswitch_2c
        0x4 -> :sswitch_29
        0x8 -> :sswitch_26
        0x10 -> :sswitch_23
        0x20 -> :sswitch_20
        0x40 -> :sswitch_1d
        0x80 -> :sswitch_1a
        0x100 -> :sswitch_17
    .end sparse-switch
.end method

.method public static whitelist prioritySendersToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "prioritySenders"    # I

    .line 3082
    packed-switch p0, :pswitch_data_20

    .line 3086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRIORITY_SENDERS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3085
    :pswitch_17
    const-string v0, "PRIORITY_SENDERS_STARRED"

    return-object v0

    .line 3084
    :pswitch_1a
    const-string v0, "PRIORITY_SENDERS_CONTACTS"

    return-object v0

    .line 3083
    :pswitch_1d
    const-string v0, "PRIORITY_SENDERS_ANY"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method public static whitelist suppressedEffectsToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "effects"    # I

    .line 3005
    if-gtz p0, :cond_5

    const-string v0, ""

    return-object v0

    .line 3006
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3007
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v2, v2

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_2f

    .line 3008
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    aget v2, v2, v1

    .line 3009
    .local v2, "effect":I
    and-int v4, p0, v2

    if-eqz v4, :cond_2a

    .line 3010
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3011
    :cond_23
    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->effectToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3013
    :cond_2a
    not-int v3, v2

    and-int/2addr p0, v3

    .line 3007
    .end local v2    # "effect":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 3015
    .end local v1    # "i":I
    :cond_2f
    if-eqz p0, :cond_43

    .line 3016
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3017
    :cond_3a
    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3019
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist suppressedVisualEffectsEqual(II)Z
    .registers 7
    .param p1, "suppressedEffects"    # I
    .param p2, "otherSuppressedVisualEffects"    # I

    .line 2869
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 2870
    return v0

    .line 2873
    :cond_4
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_a

    .line 2874
    or-int/lit8 p1, p1, 0x10

    .line 2876
    :cond_a
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_14

    .line 2877
    or-int/lit8 p1, p1, 0x4

    .line 2878
    or-int/lit8 p1, p1, 0x8

    .line 2879
    or-int/lit16 p1, p1, 0x80

    .line 2882
    :cond_14
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1a

    .line 2883
    or-int/lit8 p2, p2, 0x10

    .line 2885
    :cond_1a
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_24

    .line 2886
    or-int/lit8 p2, p2, 0x4

    .line 2887
    or-int/lit8 p2, p2, 0x8

    .line 2888
    or-int/lit16 p2, p2, 0x80

    .line 2891
    :cond_24
    and-int/lit8 v1, p1, 0x2

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_37

    .line 2893
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_31

    .line 2894
    move v1, p2

    goto :goto_32

    :cond_31
    move v1, p1

    .line 2895
    .local v1, "currSuppressedEffects":I
    :goto_32
    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_37

    .line 2896
    return v3

    .line 2900
    .end local v1    # "currSuppressedEffects":I
    :cond_37
    and-int/lit8 v1, p1, 0x1

    and-int/lit8 v2, p2, 0x1

    if-eq v1, v2, :cond_51

    .line 2902
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_43

    .line 2903
    move v1, p2

    goto :goto_44

    :cond_43
    move v1, p1

    .line 2904
    .restart local v1    # "currSuppressedEffects":I
    :goto_44
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_50

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_50

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_51

    .line 2907
    :cond_50
    return v3

    .line 2911
    .end local v1    # "currSuppressedEffects":I
    :cond_51
    and-int/lit8 v1, p1, -0x3

    and-int/lit8 v1, v1, -0x2

    .line 2914
    .local v1, "thisWithoutOldEffects":I
    and-int/lit8 v2, p2, -0x3

    and-int/lit8 v2, v2, -0x2

    .line 2917
    .local v2, "otherWithoutOldEffects":I
    if-ne v1, v2, :cond_5c

    goto :goto_5d

    :cond_5c
    move v0, v3

    :goto_5d
    return v0
.end method

.method private static greylist-max-o toggleEffects(I[IZ)I
    .registers 6
    .param p0, "currentEffects"    # I
    .param p1, "effects"    # [I
    .param p2, "suppress"    # Z

    .line 2993
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_f

    .line 2994
    aget v1, p1, v0

    .line 2995
    .local v1, "effect":I
    if-eqz p2, :cond_a

    .line 2996
    or-int/2addr p0, v1

    goto :goto_c

    .line 2998
    :cond_a
    not-int v2, v1

    and-int/2addr p0, v2

    .line 2993
    .end local v1    # "effect":I
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3001
    .end local v0    # "i":I
    :cond_f
    return p0
.end method


# virtual methods
.method public blacklist allowAlarms()Z
    .registers 2

    .line 3122
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowCalls()Z
    .registers 2

    .line 3142
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowCallsFrom()I
    .registers 2

    .line 3168
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    return v0
.end method

.method public blacklist allowConversations()Z
    .registers 2

    .line 3147
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowConversationsFrom()I
    .registers 2

    .line 3180
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    return v0
.end method

.method public blacklist allowEvents()Z
    .registers 2

    .line 3157
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowMedia()Z
    .registers 2

    .line 3127
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowMessages()Z
    .registers 2

    .line 3152
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowMessagesFrom()I
    .registers 2

    .line 3174
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    return v0
.end method

.method public blacklist allowPriorityChannels()Z
    .registers 4

    .line 3221
    iget v0, p0, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    .line 3222
    return v2

    .line 3224
    :cond_7
    iget v0, p0, Landroid/app/NotificationManager$Policy;->state:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method public blacklist allowReminders()Z
    .registers 3

    .line 3162
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist allowRepeatCallers()Z
    .registers 2

    .line 3137
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowSystem()Z
    .registers 2

    .line 3132
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist copy()Landroid/app/NotificationManager$Policy;
    .registers 3

    .line 3249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3251
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager$Policy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3252
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3253
    new-instance v1, Landroid/app/NotificationManager$Policy;

    invoke-direct {v1, v0}, Landroid/app/NotificationManager$Policy;-><init>(Landroid/os/Parcel;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    .line 3255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3253
    return-object v1

    .line 3255
    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3256
    throw v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2844
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2949
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2951
    .local v0, "pToken":J
    const-wide v2, 0x20e00000001L

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-static {p1, v2, v3, v4}, Landroid/app/NotificationManager$Policy;->bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2952
    const-wide v2, 0x10e00000002L

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2953
    const-wide v2, 0x10e00000003L

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2954
    const-wide v2, 0x20e00000004L

    iget v4, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {p1, v2, v3, v4}, Landroid/app/NotificationManager$Policy;->bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2957
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2958
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 2855
    instance-of v0, p1, Landroid/app/NotificationManager$Policy;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2856
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 2857
    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/app/NotificationManager$Policy;

    .line 2858
    .local v2, "other":Landroid/app/NotificationManager$Policy;
    iget v3, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    if-ne v3, v4, :cond_37

    iget v3, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-ne v3, v4, :cond_37

    iget v3, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-ne v3, v4, :cond_37

    iget v3, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v4, v2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2861
    invoke-direct {p0, v3, v4}, Landroid/app/NotificationManager$Policy;->suppressedVisualEffectsEqual(II)Z

    move-result v3

    if-eqz v3, :cond_37

    iget v3, v2, Landroid/app/NotificationManager$Policy;->state:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->state:I

    if-ne v3, v4, :cond_37

    iget v3, v2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    if-ne v3, v4, :cond_37

    move v1, v0

    goto :goto_38

    :cond_37
    nop

    .line 2858
    :goto_38
    return v1
.end method

.method public blacklist hasPriorityChannels()Z
    .registers 3

    .line 3229
    iget v0, p0, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 2849
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2850
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/app/NotificationManager$Policy;->state:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 2849
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist showAmbient()Z
    .registers 2

    .line 3205
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showBadges()Z
    .registers 2

    .line 3210
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showFullScreenIntents()Z
    .registers 2

    .line 3185
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showInNotificationList()Z
    .registers 2

    .line 3215
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showLights()Z
    .registers 2

    .line 3190
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showPeeking()Z
    .registers 2

    .line 3195
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showStatusBarIcons()Z
    .registers 2

    .line 3200
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 2922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationManager.Policy["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2923
    const-string/jumbo v1, "priorityCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 2924
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->priorityCategoriesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2925
    const-string v1, ",priorityCallSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 2926
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->prioritySendersToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2927
    const-string v1, ",priorityMessageSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 2928
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->prioritySendersToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2929
    const-string v1, ",priorityConvSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 2930
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->conversationSendersToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2931
    const-string v1, ",suppressedVisualEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2932
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->suppressedEffectsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2933
    const-string v1, ",hasPriorityChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2934
    iget v1, p0, Landroid/app/NotificationManager$Policy;->state:I

    const-string/jumbo v2, "true"

    const-string v3, "false"

    const-string/jumbo v4, "unset"

    const/4 v5, -0x1

    if-ne v1, v5, :cond_71

    .line 2935
    move-object v1, v4

    goto :goto_7a

    .line 2936
    :cond_71
    iget v1, p0, Landroid/app/NotificationManager$Policy;->state:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_79

    .line 2937
    move-object v1, v2

    goto :goto_7a

    .line 2938
    :cond_79
    move-object v1, v3

    .line 2934
    :goto_7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2939
    const-string v1, ",allowPriorityChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2940
    iget v1, p0, Landroid/app/NotificationManager$Policy;->state:I

    if-ne v1, v5, :cond_8a

    .line 2941
    move-object v2, v4

    goto :goto_92

    .line 2942
    :cond_8a
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result v1

    if-eqz v1, :cond_91

    goto :goto_92

    :cond_91
    move-object v2, v3

    .line 2940
    :goto_92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2943
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2944
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2922
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2834
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2835
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2836
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2837
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2838
    iget v0, p0, Landroid/app/NotificationManager$Policy;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2839
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2840
    return-void
.end method
