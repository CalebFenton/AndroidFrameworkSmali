.class public Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
.super Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
.source "ParsedInstrumentationImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist functionalTest:Z

.field private blacklist handleProfiling:Z

.field private blacklist targetPackage:Ljava/lang/String;

.field private blacklist targetProcesses:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 93
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>()V

    .line 48
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>(Landroid/os/Parcel;)V

    .line 86
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetPackage:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetProcesses:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    move v0, v1

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->handleProfiling:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    iput-boolean v1, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->functionalTest:Z

    .line 90
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 5
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "targetProcesses"    # Ljava/lang/String;
    .param p3, "handleProfiling"    # Z
    .param p4, "functionalTest"    # Z

    .line 126
    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetPackage:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetProcesses:Ljava/lang/String;

    .line 129
    iput-boolean p3, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->handleProfiling:Z

    .line 130
    iput-boolean p4, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->functionalTest:Z

    .line 133
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTargetPackage()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTargetProcesses()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetProcesses:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isFunctionalTest()Z
    .registers 2

    .line 152
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->functionalTest:Z

    return v0
.end method

.method public blacklist isHandleProfiling()Z
    .registers 2

    .line 147
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->handleProfiling:Z

    return v0
.end method

.method public blacklist setFunctionalTest(Z)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 163
    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->functionalTest:Z

    .line 164
    return-object p0
.end method

.method public blacklist setHandleProfiling(Z)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 157
    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->handleProfiling:Z

    .line 158
    return-object p0
.end method

.method public blacklist setTargetPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
    .registers 3
    .param p1, "targetPackage"    # Ljava/lang/String;

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetPackage:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public blacklist setTargetProcesses(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
    .registers 3
    .param p1, "targetProcesses"    # Ljava/lang/String;

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetProcesses:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 62
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Instrumentation{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    invoke-super {p0, p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 79
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetProcesses:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 80
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->handleProfiling:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 81
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->functionalTest:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 82
    return-void
.end method
