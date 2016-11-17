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
        Landroid/app/NotificationManager$Policy$1;
    }
.end annotation


# static fields
.field private static final ALL_PRIORITY_CATEGORIES:[I

.field private static final ALL_SUPPRESSED_EFFECTS:[I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/NotificationManager$Policy;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_CATEGORY_CALLS:I = 0x8

.field public static final PRIORITY_CATEGORY_EVENTS:I = 0x2

.field public static final PRIORITY_CATEGORY_MESSAGES:I = 0x4

.field public static final PRIORITY_CATEGORY_REMINDERS:I = 0x1

.field public static final PRIORITY_CATEGORY_REPEAT_CALLERS:I = 0x10

.field public static final PRIORITY_SENDERS_ANY:I = 0x0

.field public static final PRIORITY_SENDERS_CONTACTS:I = 0x1

.field public static final PRIORITY_SENDERS_STARRED:I = 0x2

.field public static final SUPPRESSED_EFFECTS_UNSET:I = -0x1

.field public static final SUPPRESSED_EFFECT_SCREEN_OFF:I = 0x1

.field public static final SUPPRESSED_EFFECT_SCREEN_ON:I = 0x2


# instance fields
.field public final priorityCallSenders:I

.field public final priorityCategories:I

.field public final priorityMessageSenders:I

.field public final suppressedVisualEffects:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    .line 732
    const/4 v0, 0x4

    #@3
    .line 733
    const/16 v1, 0x8

    #@5
    .line 734
    const/16 v2, 0x10

    #@7
    .line 729
    filled-new-array {v3, v4, v0, v1, v2}, [I

    #@a
    move-result-object v0

    #@b
    sput-object v0, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    #@d
    .line 770
    filled-new-array {v3, v4}, [I

    #@10
    move-result-object v0

    #@11
    sput-object v0, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    #@13
    .line 921
    new-instance v0, Landroid/app/NotificationManager$Policy$1;

    #@15
    invoke-direct {v0}, Landroid/app/NotificationManager$Policy$1;-><init>()V

    #@18
    sput-object v0, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a
    .line 717
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I

    #@0
    .prologue
    .line 790
    const/4 v0, -0x1

    #@1
    .line 789
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    #@4
    .line 788
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I

    #@0
    .prologue
    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 804
    iput p1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    #@5
    .line 805
    iput p2, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    #@7
    .line 806
    iput p3, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    #@9
    .line 807
    iput p4, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    #@b
    .line 803
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 812
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v2

    #@c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v3

    #@10
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    #@13
    .line 811
    return-void
.end method

.method private static effectToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "effect"    # I

    #@0
    .prologue
    .line 893
    packed-switch p0, :pswitch_data_0

    #@3
    .line 897
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "UNKNOWN_"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 894
    :pswitch_1
    const-string/jumbo v0, "SUPPRESSED_EFFECT_SCREEN_OFF"

    #@1b
    return-object v0

    #@1c
    .line 895
    :pswitch_2
    const-string/jumbo v0, "SUPPRESSED_EFFECT_SCREEN_ON"

    #@1f
    return-object v0

    #@20
    .line 896
    :pswitch_3
    const-string/jumbo v0, "SUPPRESSED_EFFECTS_UNSET"

    #@23
    return-object v0

    #@24
    .line 893
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static priorityCategoriesToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "priorityCategories"    # I

    #@0
    .prologue
    const/16 v4, 0x2c

    #@2
    .line 875
    if-nez p0, :cond_0

    #@4
    const-string/jumbo v3, ""

    #@7
    return-object v3

    #@8
    .line 876
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 877
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    sget-object v3, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    #@10
    array-length v3, v3

    #@11
    if-ge v0, v3, :cond_3

    #@13
    .line 878
    sget-object v3, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    #@15
    aget v1, v3, v0

    #@17
    .line 879
    .local v1, "priorityCategory":I
    and-int v3, p0, v1

    #@19
    if-eqz v3, :cond_2

    #@1b
    .line 880
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@1e
    move-result v3

    #@1f
    if-lez v3, :cond_1

    #@21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 881
    :cond_1
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->priorityCategoryToString(I)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 883
    :cond_2
    not-int v3, v1

    #@2c
    and-int/2addr p0, v3

    #@2d
    .line 877
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 885
    .end local v1    # "priorityCategory":I
    :cond_3
    if-eqz p0, :cond_5

    #@32
    .line 886
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@35
    move-result v3

    #@36
    if-lez v3, :cond_4

    #@38
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    .line 887
    :cond_4
    const-string/jumbo v3, "PRIORITY_CATEGORY_UNKNOWN_"

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    .line 889
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    return-object v3
.end method

.method private static priorityCategoryToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "priorityCategory"    # I

    #@0
    .prologue
    .line 902
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "PRIORITY_CATEGORY_UNKNOWN_"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 903
    :sswitch_0
    const-string/jumbo v0, "PRIORITY_CATEGORY_REMINDERS"

    #@1b
    return-object v0

    #@1c
    .line 904
    :sswitch_1
    const-string/jumbo v0, "PRIORITY_CATEGORY_EVENTS"

    #@1f
    return-object v0

    #@20
    .line 905
    :sswitch_2
    const-string/jumbo v0, "PRIORITY_CATEGORY_MESSAGES"

    #@23
    return-object v0

    #@24
    .line 906
    :sswitch_3
    const-string/jumbo v0, "PRIORITY_CATEGORY_CALLS"

    #@27
    return-object v0

    #@28
    .line 907
    :sswitch_4
    const-string/jumbo v0, "PRIORITY_CATEGORY_REPEAT_CALLERS"

    #@2b
    return-object v0

    #@2c
    .line 902
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public static prioritySendersToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "prioritySenders"    # I

    #@0
    .prologue
    .line 913
    packed-switch p0, :pswitch_data_0

    #@3
    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "PRIORITY_SENDERS_UNKNOWN_"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 914
    :pswitch_0
    const-string/jumbo v0, "PRIORITY_SENDERS_ANY"

    #@1b
    return-object v0

    #@1c
    .line 915
    :pswitch_1
    const-string/jumbo v0, "PRIORITY_SENDERS_CONTACTS"

    #@1f
    return-object v0

    #@20
    .line 916
    :pswitch_2
    const-string/jumbo v0, "PRIORITY_SENDERS_STARRED"

    #@23
    return-object v0

    #@24
    .line 913
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static suppressedEffectsToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "effects"    # I

    #@0
    .prologue
    const/16 v4, 0x2c

    #@2
    .line 857
    if-gtz p0, :cond_0

    #@4
    const-string/jumbo v3, ""

    #@7
    return-object v3

    #@8
    .line 858
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 859
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    sget-object v3, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    #@10
    array-length v3, v3

    #@11
    if-ge v1, v3, :cond_3

    #@13
    .line 860
    sget-object v3, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    #@15
    aget v0, v3, v1

    #@17
    .line 861
    .local v0, "effect":I
    and-int v3, p0, v0

    #@19
    if-eqz v3, :cond_2

    #@1b
    .line 862
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@1e
    move-result v3

    #@1f
    if-lez v3, :cond_1

    #@21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 863
    :cond_1
    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->effectToString(I)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 865
    :cond_2
    not-int v3, v0

    #@2c
    and-int/2addr p0, v3

    #@2d
    .line 859
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 867
    .end local v0    # "effect":I
    :cond_3
    if-eqz p0, :cond_5

    #@32
    .line 868
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@35
    move-result v3

    #@36
    if-lez v3, :cond_4

    #@38
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    .line 869
    :cond_4
    const-string/jumbo v3, "UNKNOWN_"

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    .line 871
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 825
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 836
    instance-of v3, p1, Landroid/app/NotificationManager$Policy;

    #@4
    if-nez v3, :cond_0

    #@6
    return v2

    #@7
    .line 837
    :cond_0
    if-ne p1, p0, :cond_1

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 838
    check-cast v0, Landroid/app/NotificationManager$Policy;

    #@d
    .line 839
    .local v0, "other":Landroid/app/NotificationManager$Policy;
    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    #@f
    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    #@11
    if-ne v3, v4, :cond_3

    #@13
    .line 840
    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    #@15
    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    #@17
    if-ne v3, v4, :cond_3

    #@19
    .line 841
    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    #@1b
    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    #@1d
    if-ne v3, v4, :cond_3

    #@1f
    .line 842
    iget v3, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    #@21
    iget v4, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    #@23
    if-ne v3, v4, :cond_2

    #@25
    .line 839
    :goto_0
    return v1

    #@26
    :cond_2
    move v1, v2

    #@27
    .line 842
    goto :goto_0

    #@28
    :cond_3
    move v1, v2

    #@29
    .line 839
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 830
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    #@17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 831
    iget v1, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    #@20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x3

    #@25
    aput-object v1, v0, v2

    #@27
    .line 830
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@2a
    move-result v0

    #@2b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NotificationManager.Policy[priorityCategories="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 848
    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    #@e
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->priorityCategoriesToString(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 847
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 849
    const-string/jumbo v1, ",priorityCallSenders="

    #@19
    .line 847
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 849
    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    #@1f
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->prioritySendersToString(I)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 847
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 850
    const-string/jumbo v1, ",priorityMessageSenders="

    #@2a
    .line 847
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 850
    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    #@30
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->prioritySendersToString(I)Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 847
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 851
    const-string/jumbo v1, ",suppressedVisualEffects="

    #@3b
    .line 847
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 852
    iget v1, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    #@41
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->suppressedEffectsToString(I)Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    .line 847
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 853
    const-string/jumbo v1, "]"

    #@4c
    .line 847
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 817
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 818
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 819
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 820
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 816
    return-void
.end method
