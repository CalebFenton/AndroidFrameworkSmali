.class public Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
.super Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
.source "ParsedServiceImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedService;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist foregroundServiceType:I

.field private blacklist permission:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "foregroundServiceType"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    .line 119
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->foregroundServiceType:I

    .line 120
    iput-object p2, p0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->permission:Ljava/lang/String;

    .line 123
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;-><init>(Landroid/os/Parcel;)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->foregroundServiceType:I

    .line 83
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->permission:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;)V
    .registers 3
    .param p1, "other"    # Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;-><init>(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V

    .line 45
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->foregroundServiceType:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->foregroundServiceType:I

    .line 46
    iget-object v0, p1, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->permission:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->permission:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getForegroundServiceType()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->foregroundServiceType:I

    return v0
.end method

.method public blacklist getPermission()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setForegroundServiceType(I)Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    .registers 2
    .param p1, "value"    # I

    .line 137
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->foregroundServiceType:I

    .line 138
    return-object p0
.end method

.method public blacklist setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->permission:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 57
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Service{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 73
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->foregroundServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 75
    return-void
.end method
