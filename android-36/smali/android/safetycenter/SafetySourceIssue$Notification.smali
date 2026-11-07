.class public final Landroid/safetycenter/SafetySourceIssue$Notification;
.super Ljava/lang/Object;
.source "SafetySourceIssue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetySourceIssue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Notification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/SafetySourceIssue$Notification$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/SafetySourceIssue$Notification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetySourceIssue$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActions(Landroid/safetycenter/SafetySourceIssue$Notification;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mActions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Landroid/safetycenter/SafetySourceIssue$Notification;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/safetycenter/SafetySourceIssue$Notification;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1043
    new-instance v0, Landroid/safetycenter/SafetySourceIssue$Notification$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetySourceIssue$Notification$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetySourceIssue$Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetySourceIssue$Action;",
            ">;)V"
        }
    .end annotation

    .line 1067
    .local p3, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetySourceIssue$Action;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1068
    iput-object p1, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mTitle:Ljava/lang/CharSequence;

    .line 1069
    iput-object p2, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mText:Ljava/lang/CharSequence;

    .line 1070
    iput-object p3, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mActions:Ljava/util/List;

    .line 1071
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/safetycenter/SafetySourceIssue-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/safetycenter/SafetySourceIssue$Notification;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1118
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1119
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/SafetySourceIssue$Notification;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1120
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/SafetySourceIssue$Notification;

    .line 1121
    .local v1, "that":Landroid/safetycenter/SafetySourceIssue$Notification;
    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue$Notification;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mText:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue$Notification;->mText:Ljava/lang/CharSequence;

    .line 1122
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mActions:Ljava/util/List;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue$Notification;->mActions:Ljava/util/List;

    .line 1123
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    .line 1121
    :goto_2d
    return v0
.end method

.method public whitelist getActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetySourceIssue$Action;",
            ">;"
        }
    .end annotation

    .line 1101
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mActions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 1088
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1079
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1128
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mActions:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification{mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mActions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1111
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1112
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1113
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Notification;->mActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1114
    return-void
.end method
