.class public Landroid/service/notification/NotificationListenerService$Ranking;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ranking"
.end annotation


# static fields
.field public static final IMPORTANCE_DEFAULT:I = 0x3

.field public static final IMPORTANCE_HIGH:I = 0x4

.field public static final IMPORTANCE_LOW:I = 0x2

.field public static final IMPORTANCE_MAX:I = 0x5

.field public static final IMPORTANCE_MIN:I = 0x1

.field public static final IMPORTANCE_NONE:I = 0x0

.field public static final IMPORTANCE_UNSPECIFIED:I = -0x3e8

.field public static final VISIBILITY_NO_OVERRIDE:I = -0x3e8


# instance fields
.field private mImportance:I

.field private mImportanceExplanation:Ljava/lang/CharSequence;

.field private mIsAmbient:Z

.field private mKey:Ljava/lang/String;

.field private mMatchesInterruptionFilter:Z

.field private mOverrideGroupKey:Ljava/lang/String;

.field private mRank:I

.field private mSuppressedVisualEffects:I

.field private mVisibilityOverride:I


# direct methods
.method static synthetic -wrap0(Landroid/service/notification/NotificationListenerService$Ranking;Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "matchesInterruptionFilter"    # Z
    .param p4, "visibilityOverride"    # I
    .param p5, "suppressedVisualEffects"    # I
    .param p6, "importance"    # I
    .param p7, "explanation"    # Ljava/lang/CharSequence;
    .param p8, "overrideGroupKey"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct/range {p0 .. p8}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1072
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    #@6
    .line 1082
    return-void
.end method

.method public static importanceToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "importance"    # I

    #@0
    .prologue
    .line 1185
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "UNKNOWN("

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, ")"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 1187
    :sswitch_0
    const-string/jumbo v0, "UNSPECIFIED"

    #@26
    return-object v0

    #@27
    .line 1189
    :sswitch_1
    const-string/jumbo v0, "NONE"

    #@2a
    return-object v0

    #@2b
    .line 1191
    :sswitch_2
    const-string/jumbo v0, "MIN"

    #@2e
    return-object v0

    #@2f
    .line 1193
    :sswitch_3
    const-string/jumbo v0, "LOW"

    #@32
    return-object v0

    #@33
    .line 1195
    :sswitch_4
    const-string/jumbo v0, "DEFAULT"

    #@36
    return-object v0

    #@37
    .line 1197
    :sswitch_5
    const-string/jumbo v0, "HIGH"

    #@3a
    return-object v0

    #@3b
    .line 1199
    :sswitch_6
    const-string/jumbo v0, "MAX"

    #@3e
    return-object v0

    #@3f
    .line 1185
    nop

    #@40
    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
    .end sparse-switch
.end method

.method private populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "matchesInterruptionFilter"    # Z
    .param p4, "visibilityOverride"    # I
    .param p5, "suppressedVisualEffects"    # I
    .param p6, "importance"    # I
    .param p7, "explanation"    # Ljava/lang/CharSequence;
    .param p8, "overrideGroupKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1170
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    #@2
    .line 1171
    iput p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    #@4
    .line 1172
    const/4 v0, 0x2

    #@5
    if-ge p6, v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    #@a
    .line 1173
    iput-boolean p3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    #@c
    .line 1174
    iput p4, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    #@e
    .line 1175
    iput p5, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    #@10
    .line 1176
    iput p6, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    #@12
    .line 1177
    iput-object p7, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    #@14
    .line 1178
    iput-object p8, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    #@16
    .line 1169
    return-void

    #@17
    .line 1172
    :cond_0
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method


# virtual methods
.method public getImportance()I
    .locals 1

    #@0
    .prologue
    .line 1146
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    #@2
    return v0
.end method

.method public getImportanceExplanation()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1156
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1088
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOverrideGroupKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1164
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRank()I
    .locals 1

    #@0
    .prologue
    .line 1098
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    #@2
    return v0
.end method

.method public getSuppressedVisualEffects()I
    .locals 1

    #@0
    .prologue
    .line 1125
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    #@2
    return v0
.end method

.method public getVisibilityOverride()I
    .locals 1

    #@0
    .prologue
    .line 1117
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    #@2
    return v0
.end method

.method public isAmbient()Z
    .locals 1

    #@0
    .prologue
    .line 1106
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    #@2
    return v0
.end method

.method public matchesInterruptionFilter()Z
    .locals 1

    #@0
    .prologue
    .line 1136
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    #@2
    return v0
.end method
