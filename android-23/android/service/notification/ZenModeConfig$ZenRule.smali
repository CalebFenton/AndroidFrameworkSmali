.class public Landroid/service/notification/ZenModeConfig$ZenRule;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZenRule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$ZenRule$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public component:Landroid/content/ComponentName;

.field public condition:Landroid/service/notification/Condition;

.field public conditionId:Landroid/net/Uri;

.field public enabled:Z

.field public name:Ljava/lang/String;

.field public snoozing:Z

.field public zenMode:I


# direct methods
.method static synthetic -wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 0
    .param p0, "d"    # Landroid/service/notification/ZenModeConfig$Diff;
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "from"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p3, "to"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/service/notification/ZenModeConfig$ZenRule;->appendDiff(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1056
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule$1;

    #@2
    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule$1;-><init>()V

    #@5
    .line 1055
    sput-object v0, Landroid/service/notification/ZenModeConfig$ZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 930
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    .line 941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 942
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    if-ne v0, v1, :cond_2

    #@c
    move v0, v1

    #@d
    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@f
    .line 943
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    if-ne v0, v1, :cond_0

    #@15
    move v2, v1

    #@16
    :cond_0
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@18
    .line 944
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    if-ne v0, v1, :cond_1

    #@1e
    .line 945
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@24
    .line 947
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v0

    #@28
    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@2a
    .line 948
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroid/net/Uri;

    #@30
    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@32
    .line 949
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Landroid/service/notification/Condition;

    #@38
    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@3a
    .line 950
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Landroid/content/ComponentName;

    #@40
    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@42
    .line 941
    return-void

    #@43
    :cond_2
    move v0, v2

    #@44
    .line 942
    goto :goto_0
.end method

.method private appendDiff(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 3
    .param p1, "d"    # Landroid/service/notification/ZenModeConfig$Diff;
    .param p2, "item"    # Ljava/lang/String;
    .param p3, "to"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    #@0
    .prologue
    .line 999
    if-nez p3, :cond_0

    #@2
    .line 1000
    const-string/jumbo v0, "delete"

    #@5
    invoke-static {p1, p2, v0}, Landroid/service/notification/ZenModeConfig$Diff;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    #@8
    .line 1001
    return-void

    #@9
    .line 1003
    :cond_0
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@b
    iget-boolean v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@d
    if-eq v0, v1, :cond_1

    #@f
    .line 1004
    const-string/jumbo v0, "enabled"

    #@12
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@17
    move-result-object v1

    #@18
    iget-boolean v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@1a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@21
    .line 1006
    :cond_1
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@23
    iget-boolean v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@25
    if-eq v0, v1, :cond_2

    #@27
    .line 1007
    const-string/jumbo v0, "snoozing"

    #@2a
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@2c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2f
    move-result-object v1

    #@30
    iget-boolean v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@32
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@39
    .line 1009
    :cond_2
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@3b
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@3d
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@40
    move-result v0

    #@41
    if-nez v0, :cond_3

    #@43
    .line 1010
    const-string/jumbo v0, "name"

    #@46
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@48
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@4a
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@4d
    .line 1012
    :cond_3
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@4f
    iget v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@51
    if-eq v0, v1, :cond_4

    #@53
    .line 1013
    const-string/jumbo v0, "zenMode"

    #@56
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object v1

    #@5c
    iget v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@5e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@65
    .line 1015
    :cond_4
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@67
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@69
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6c
    move-result v0

    #@6d
    if-nez v0, :cond_5

    #@6f
    .line 1016
    const-string/jumbo v0, "conditionId"

    #@72
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@74
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@76
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@79
    .line 1018
    :cond_5
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@7b
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@7d
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@80
    move-result v0

    #@81
    if-nez v0, :cond_6

    #@83
    .line 1019
    const-string/jumbo v0, "condition"

    #@86
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@88
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@8a
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@8d
    .line 1021
    :cond_6
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@8f
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@91
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@94
    move-result v0

    #@95
    if-nez v0, :cond_7

    #@97
    .line 1022
    const-string/jumbo v0, "component"

    #@9a
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@9c
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@9e
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@a1
    .line 998
    :cond_7
    return-void
.end method

.method private static appendDiff(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 1
    .param p0, "d"    # Landroid/service/notification/ZenModeConfig$Diff;
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "from"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p3, "to"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    #@0
    .prologue
    .line 988
    if-nez p0, :cond_0

    #@2
    return-void

    #@3
    .line 989
    :cond_0
    if-nez p2, :cond_2

    #@5
    .line 990
    if-eqz p3, :cond_1

    #@7
    .line 991
    const-string/jumbo v0, "insert"

    #@a
    invoke-static {p0, p1, v0}, Landroid/service/notification/ZenModeConfig$Diff;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    #@d
    .line 993
    :cond_1
    return-void

    #@e
    .line 995
    :cond_2
    invoke-direct {p2, p0, p1, p3}, Landroid/service/notification/ZenModeConfig$ZenRule;->appendDiff(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    #@11
    .line 987
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 955
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1028
    instance-of v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    .line 1029
    :cond_0
    if-ne p1, p0, :cond_1

    #@8
    const/4 v1, 0x1

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 1030
    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@d
    .line 1031
    .local v0, "other":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@f
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 1032
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@15
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 1033
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@1b
    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@1d
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    .line 1031
    if-eqz v2, :cond_2

    #@23
    .line 1034
    iget v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@25
    iget v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@27
    if-ne v2, v3, :cond_2

    #@29
    .line 1035
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@2b
    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@2d
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@30
    move-result v2

    #@31
    .line 1031
    if-eqz v2, :cond_2

    #@33
    .line 1036
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@35
    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@37
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3a
    move-result v2

    #@3b
    .line 1031
    if-eqz v2, :cond_2

    #@3d
    .line 1037
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@3f
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@41
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@44
    move-result v1

    #@45
    .line 1031
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 1042
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v1, v0, v2

    #@1a
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@1c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v1

    #@20
    const/4 v2, 0x3

    #@21
    aput-object v1, v0, v2

    #@23
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@25
    const/4 v2, 0x4

    #@26
    aput-object v1, v0, v2

    #@28
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@2a
    const/4 v2, 0x5

    #@2b
    aput-object v1, v0, v2

    #@2d
    .line 1043
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@2f
    const/4 v2, 0x6

    #@30
    aput-object v1, v0, v2

    #@32
    .line 1042
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@35
    move-result v0

    #@36
    return v0
.end method

.method public isAutomaticActive()Z
    .locals 1

    #@0
    .prologue
    .line 1047
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_1
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@c
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    #@11
    move-result v0

    #@12
    goto :goto_0
.end method

.method public isTrueOrUnknown()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 1051
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@4
    if-eqz v2, :cond_2

    #@6
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@8
    iget v2, v2, Landroid/service/notification/Condition;->state:I

    #@a
    if-eq v2, v0, :cond_0

    #@c
    .line 1052
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@e
    iget v2, v2, Landroid/service/notification/Condition;->state:I

    #@10
    const/4 v3, 0x2

    #@11
    if-ne v2, v3, :cond_1

    #@13
    .line 1051
    :cond_0
    :goto_0
    return v0

    #@14
    :cond_1
    move v0, v1

    #@15
    .line 1052
    goto :goto_0

    #@16
    :cond_2
    move v0, v1

    #@17
    .line 1051
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-class v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@4
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b
    const/16 v1, 0x5b

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    .line 977
    const-string/jumbo v1, "enabled="

    #@14
    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 977
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@1a
    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 978
    const-string/jumbo v1, ",snoozing="

    #@21
    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 978
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@27
    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 979
    const-string/jumbo v1, ",name="

    #@2e
    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 979
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@34
    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 980
    const-string/jumbo v1, ",zenMode="

    #@3b
    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 980
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@41
    invoke-static {v1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 981
    const-string/jumbo v1, ",conditionId="

    #@4c
    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 981
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@52
    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    .line 982
    const-string/jumbo v1, ",condition="

    #@59
    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    .line 982
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@5f
    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    .line 983
    const-string/jumbo v1, ",component="

    #@66
    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    .line 983
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@6c
    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    .line 984
    const/16 v1, 0x5d

    #@72
    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v0

    #@7a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 960
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 961
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    move v0, v1

    #@f
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 962
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 963
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 964
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 968
    :goto_2
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 969
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@25
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@28
    .line 970
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@2a
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@2d
    .line 971
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@2f
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@32
    .line 959
    return-void

    #@33
    :cond_0
    move v0, v2

    #@34
    .line 960
    goto :goto_0

    #@35
    :cond_1
    move v0, v2

    #@36
    .line 961
    goto :goto_1

    #@37
    .line 966
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    goto :goto_2
.end method
