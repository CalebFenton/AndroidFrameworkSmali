.class public Landroid/service/notification/Condition;
.super Ljava/lang/Object;
.source "Condition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/Condition$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/Condition;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_RELEVANT_ALWAYS:I = 0x2

.field public static final FLAG_RELEVANT_NOW:I = 0x1

.field public static final SCHEME:Ljava/lang/String; = "condition"

.field public static final STATE_ERROR:I = 0x3

.field public static final STATE_FALSE:I = 0x0

.field public static final STATE_TRUE:I = 0x1

.field public static final STATE_UNKNOWN:I = 0x2


# instance fields
.field public final flags:I

.field public final icon:I

.field public final id:Landroid/net/Uri;

.field public final line1:Ljava/lang/String;

.field public final line2:Ljava/lang/String;

.field public final state:I

.field public final summary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 167
    new-instance v0, Landroid/service/notification/Condition$1;

    #@2
    invoke-direct {v0}, Landroid/service/notification/Condition$1;-><init>()V

    #@5
    .line 166
    sput-object v0, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 3
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "line1"    # Ljava/lang/String;
    .param p4, "line2"    # Ljava/lang/String;
    .param p5, "icon"    # I
    .param p6, "state"    # I
    .param p7, "flags"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    if-nez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "id is required"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 56
    :cond_0
    if-nez p2, :cond_1

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "summary is required"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 57
    :cond_1
    if-nez p3, :cond_2

    #@1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v1, "line1 is required"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 58
    :cond_2
    if-nez p4, :cond_3

    #@26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    const-string/jumbo v1, "line2 is required"

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 59
    :cond_3
    invoke-static {p6}, Landroid/service/notification/Condition;->isValidState(I)Z

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_4

    #@35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@37
    new-instance v1, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v2, "state is invalid: "

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v0

    #@4f
    .line 60
    :cond_4
    iput-object p1, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    #@51
    .line 61
    iput-object p2, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    #@53
    .line 62
    iput-object p3, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    #@55
    .line 63
    iput-object p4, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    #@57
    .line 64
    iput p5, p0, Landroid/service/notification/Condition;->icon:I

    #@59
    .line 65
    iput p6, p0, Landroid/service/notification/Condition;->state:I

    #@5b
    .line 66
    iput p7, p0, Landroid/service/notification/Condition;->flags:I

    #@5d
    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 70
    const-class v0, Landroid/service/notification/Condition;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/net/Uri;

    #@c
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v5

    #@1c
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v6

    #@20
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v7

    #@24
    move-object v0, p0

    #@25
    .line 70
    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    #@28
    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/notification/Condition;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/Condition;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static isValidId(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2
    .param p0, "id"    # Landroid/net/Uri;
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 163
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "condition"

    #@5
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    :goto_0
    return v0

    #@18
    :cond_0
    const/4 v0, 0x0

    #@19
    goto :goto_0
.end method

.method private static isValidState(I)Z
    .locals 2
    .param p0, "state"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 80
    if-ltz p0, :cond_0

    #@3
    const/4 v1, 0x3

    #@4
    if-gt p0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public static newId(Landroid/content/Context;)Landroid/net/Uri$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 159
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    const-string/jumbo v1, "condition"

    #@8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static relevanceToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "flags"    # I

    #@0
    .prologue
    .line 116
    and-int/lit8 v2, p0, 0x1

    #@2
    if-eqz v2, :cond_1

    #@4
    const/4 v1, 0x1

    #@5
    .line 117
    .local v1, "now":Z
    :goto_0
    and-int/lit8 v2, p0, 0x2

    #@7
    if-eqz v2, :cond_2

    #@9
    const/4 v0, 0x1

    #@a
    .line 118
    .local v0, "always":Z
    :goto_1
    if-nez v1, :cond_0

    #@c
    if-eqz v0, :cond_3

    #@e
    .line 119
    :cond_0
    if-eqz v1, :cond_4

    #@10
    if-eqz v0, :cond_4

    #@12
    const-string/jumbo v2, "NOW, ALWAYS"

    #@15
    return-object v2

    #@16
    .line 116
    .end local v0    # "always":Z
    .end local v1    # "now":Z
    :cond_1
    const/4 v1, 0x0

    #@17
    .restart local v1    # "now":Z
    goto :goto_0

    #@18
    .line 117
    :cond_2
    const/4 v0, 0x0

    #@19
    .restart local v0    # "always":Z
    goto :goto_1

    #@1a
    .line 118
    :cond_3
    const-string/jumbo v2, "NONE"

    #@1d
    return-object v2

    #@1e
    .line 120
    :cond_4
    if-eqz v1, :cond_5

    #@20
    const-string/jumbo v2, "NOW"

    #@23
    :goto_2
    return-object v2

    #@24
    :cond_5
    const-string/jumbo v2, "ALWAYS"

    #@27
    goto :goto_2
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    #@0
    .prologue
    .line 108
    if-nez p0, :cond_0

    #@2
    const-string/jumbo v0, "STATE_FALSE"

    #@5
    return-object v0

    #@6
    .line 109
    :cond_0
    const/4 v0, 0x1

    #@7
    if-ne p0, v0, :cond_1

    #@9
    const-string/jumbo v0, "STATE_TRUE"

    #@c
    return-object v0

    #@d
    .line 110
    :cond_1
    const/4 v0, 0x2

    #@e
    if-ne p0, v0, :cond_2

    #@10
    const-string/jumbo v0, "STATE_UNKNOWN"

    #@13
    return-object v0

    #@14
    .line 111
    :cond_2
    const/4 v0, 0x3

    #@15
    if-ne p0, v0, :cond_3

    #@17
    const-string/jumbo v0, "STATE_ERROR"

    #@1a
    return-object v0

    #@1b
    .line 112
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "state is invalid: "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method


# virtual methods
.method public copy()Landroid/service/notification/Condition;
    .locals 2

    #@0
    .prologue
    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 150
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    #@5
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/Condition;->writeToParcel(Landroid/os/Parcel;I)V

    #@8
    .line 151
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@c
    .line 152
    new-instance v1, Landroid/service/notification/Condition;

    #@e
    invoke-direct {v1, v0}, Landroid/service/notification/Condition;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@14
    .line 152
    return-object v1

    #@15
    .line 153
    :catchall_0
    move-exception v1

    #@16
    .line 154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 153
    throw v1
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 144
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
    .line 125
    instance-of v3, p1, Landroid/service/notification/Condition;

    #@4
    if-nez v3, :cond_0

    #@6
    return v2

    #@7
    .line 126
    :cond_0
    if-ne p1, p0, :cond_1

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 127
    check-cast v0, Landroid/service/notification/Condition;

    #@d
    .line 128
    .local v0, "other":Landroid/service/notification/Condition;
    iget-object v3, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    #@f
    iget-object v4, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    #@11
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_3

    #@17
    .line 129
    iget-object v3, v0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    #@19
    iget-object v4, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    #@1b
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    .line 128
    if-eqz v3, :cond_3

    #@21
    .line 130
    iget-object v3, v0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    #@23
    iget-object v4, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    #@25
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@28
    move-result v3

    #@29
    .line 128
    if-eqz v3, :cond_3

    #@2b
    .line 131
    iget-object v3, v0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    #@2d
    iget-object v4, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    #@2f
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@32
    move-result v3

    #@33
    .line 128
    if-eqz v3, :cond_3

    #@35
    .line 132
    iget v3, v0, Landroid/service/notification/Condition;->icon:I

    #@37
    iget v4, p0, Landroid/service/notification/Condition;->icon:I

    #@39
    if-ne v3, v4, :cond_3

    #@3b
    .line 133
    iget v3, v0, Landroid/service/notification/Condition;->state:I

    #@3d
    iget v4, p0, Landroid/service/notification/Condition;->state:I

    #@3f
    if-ne v3, v4, :cond_3

    #@41
    .line 134
    iget v3, v0, Landroid/service/notification/Condition;->flags:I

    #@43
    iget v4, p0, Landroid/service/notification/Condition;->flags:I

    #@45
    if-ne v3, v4, :cond_2

    #@47
    .line 128
    :goto_0
    return v1

    #@48
    :cond_2
    move v1, v2

    #@49
    .line 134
    goto :goto_0

    #@4a
    :cond_3
    move v1, v2

    #@4b
    .line 128
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 139
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget-object v1, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    iget-object v1, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    iget-object v1, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    #@f
    const/4 v2, 0x2

    #@10
    aput-object v1, v0, v2

    #@12
    iget-object v1, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    #@14
    const/4 v2, 0x3

    #@15
    aput-object v1, v0, v2

    #@17
    iget v1, p0, Landroid/service/notification/Condition;->icon:I

    #@19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v1

    #@1d
    const/4 v2, 0x4

    #@1e
    aput-object v1, v0, v2

    #@20
    iget v1, p0, Landroid/service/notification/Condition;->state:I

    #@22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v1

    #@26
    const/4 v2, 0x5

    #@27
    aput-object v1, v0, v2

    #@29
    iget v1, p0, Landroid/service/notification/Condition;->flags:I

    #@2b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v1

    #@2f
    const/4 v2, 0x6

    #@30
    aput-object v1, v0, v2

    #@32
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@35
    move-result v0

    #@36
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-class v1, Landroid/service/notification/Condition;

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
    .line 97
    const-string/jumbo v1, "id="

    #@14
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 97
    iget-object v1, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    #@1a
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 98
    const-string/jumbo v1, ",summary="

    #@21
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 98
    iget-object v1, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    #@27
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 99
    const-string/jumbo v1, ",line1="

    #@2e
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 99
    iget-object v1, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    #@34
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 100
    const-string/jumbo v1, ",line2="

    #@3b
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 100
    iget-object v1, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    #@41
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 101
    const-string/jumbo v1, ",icon="

    #@48
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 101
    iget v1, p0, Landroid/service/notification/Condition;->icon:I

    #@4e
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    .line 102
    const-string/jumbo v1, ",state="

    #@55
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    .line 102
    iget v1, p0, Landroid/service/notification/Condition;->state:I

    #@5b
    invoke-static {v1}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    .line 103
    const-string/jumbo v1, ",flags="

    #@66
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    .line 103
    iget v1, p0, Landroid/service/notification/Condition;->flags:I

    #@6c
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    .line 104
    const/16 v1, 0x5d

    #@72
    .line 96
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
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@6
    .line 86
    iget-object v0, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 87
    iget-object v0, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 88
    iget-object v0, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 89
    iget v0, p0, Landroid/service/notification/Condition;->icon:I

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 90
    iget v0, p0, Landroid/service/notification/Condition;->state:I

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 91
    iget v0, p0, Landroid/service/notification/Condition;->flags:I

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 84
    return-void
.end method
