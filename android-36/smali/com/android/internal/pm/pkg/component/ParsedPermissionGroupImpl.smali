.class public Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;
.super Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
.source "ParsedPermissionGroupImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist backgroundRequestDetailRes:I

.field private blacklist backgroundRequestRes:I

.field private blacklist priority:I

.field private blacklist requestDetailRes:I

.field private blacklist requestRes:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 160
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>()V

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(IIIII)V
    .registers 6
    .param p1, "requestDetailRes"    # I
    .param p2, "backgroundRequestRes"    # I
    .param p3, "backgroundRequestDetailRes"    # I
    .param p4, "requestRes"    # I
    .param p5, "priority"    # I

    .line 90
    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>()V

    .line 91
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->requestDetailRes:I

    .line 92
    iput p2, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestRes:I

    .line 93
    iput p3, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestDetailRes:I

    .line 94
    iput p4, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->requestRes:I

    .line 95
    iput p5, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->priority:I

    .line 98
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>(Landroid/os/Parcel;)V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->requestDetailRes:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestRes:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestDetailRes:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->requestRes:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->priority:I

    .line 67
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBackgroundRequestDetailRes()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestDetailRes:I

    return v0
.end method

.method public blacklist getBackgroundRequestRes()I
    .registers 2

    .line 107
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestRes:I

    return v0
.end method

.method public blacklist getPriority()I
    .registers 2

    .line 122
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->priority:I

    return v0
.end method

.method public blacklist getRequestDetailRes()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->requestDetailRes:I

    return v0
.end method

.method public blacklist getRequestRes()I
    .registers 2

    .line 117
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->requestRes:I

    return v0
.end method

.method public blacklist setBackgroundRequestDetailRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;
    .registers 2
    .param p1, "value"    # I

    .line 139
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestDetailRes:I

    .line 140
    return-object p0
.end method

.method public blacklist setBackgroundRequestRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;
    .registers 2
    .param p1, "value"    # I

    .line 133
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestRes:I

    .line 134
    return-object p0
.end method

.method public blacklist setPriority(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;
    .registers 2
    .param p1, "value"    # I

    .line 151
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->priority:I

    .line 152
    return-object p0
.end method

.method public blacklist setRequestDetailRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;
    .registers 2
    .param p1, "value"    # I

    .line 127
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->requestDetailRes:I

    .line 128
    return-object p0
.end method

.method public blacklist setRequestRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;
    .registers 2
    .param p1, "value"    # I

    .line 145
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->requestRes:I

    .line 146
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionGroup{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 53
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->requestDetailRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestDetailRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->requestRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    return-void
.end method
