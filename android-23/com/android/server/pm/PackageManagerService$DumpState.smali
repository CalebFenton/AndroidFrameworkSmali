.class Lcom/android/server/pm/PackageManagerService$DumpState;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DumpState"
.end annotation


# static fields
.field public static final DUMP_DOMAIN_PREFERRED:I = 0x8000

.field public static final DUMP_FEATURES:I = 0x2

.field public static final DUMP_INSTALLS:I = 0x2000

.field public static final DUMP_INTENT_FILTER_VERIFIERS:I = 0x4000

.field public static final DUMP_KEYSETS:I = 0x800

.field public static final DUMP_LIBS:I = 0x1

.field public static final DUMP_MESSAGES:I = 0x40

.field public static final DUMP_PACKAGES:I = 0x10

.field public static final DUMP_PERMISSIONS:I = 0x8

.field public static final DUMP_PREFERRED:I = 0x200

.field public static final DUMP_PREFERRED_XML:I = 0x400

.field public static final DUMP_PROVIDERS:I = 0x80

.field public static final DUMP_RESOLVERS:I = 0x4

.field public static final DUMP_SHARED_USERS:I = 0x20

.field public static final DUMP_VERIFIERS:I = 0x100

.field public static final DUMP_VERSION:I = 0x1000

.field public static final OPTION_SHOW_FILTERS:I = 0x1


# instance fields
.field private mOptions:I

.field private mSharedUser:Lcom/android/server/pm/SharedUserSetting;

.field private mTitlePrinted:Z

.field private mTypes:I


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 14642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getSharedUser()Lcom/android/server/pm/SharedUserSetting;
    .locals 1

    #@0
    .prologue
    .line 14705
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mSharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@2
    return-object v0
.end method

.method public getTitlePrinted()Z
    .locals 1

    #@0
    .prologue
    .line 14697
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTitlePrinted:Z

    #@2
    return v0
.end method

.method public isDumping(I)Z
    .locals 3
    .param p1, "type"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 14671
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTypes:I

    #@4
    if-nez v2, :cond_0

    #@6
    const/16 v2, 0x400

    #@8
    if-eq p1, v2, :cond_0

    #@a
    .line 14672
    return v0

    #@b
    .line 14675
    :cond_0
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTypes:I

    #@d
    and-int/2addr v2, p1

    #@e
    if-eqz v2, :cond_1

    #@10
    :goto_0
    return v0

    #@11
    :cond_1
    move v0, v1

    #@12
    goto :goto_0
.end method

.method public isOptionEnabled(I)Z
    .locals 2
    .param p1, "option"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 14683
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mOptions:I

    #@3
    and-int/2addr v1, p1

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public onTitlePrinted()Z
    .locals 2

    #@0
    .prologue
    .line 14691
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTitlePrinted:Z

    #@2
    .line 14692
    .local v0, "printed":Z
    const/4 v1, 0x1

    #@3
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTitlePrinted:Z

    #@5
    .line 14693
    return v0
.end method

.method public setDump(I)V
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 14679
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTypes:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTypes:I

    #@5
    .line 14678
    return-void
.end method

.method public setOptionEnabled(I)V
    .locals 1
    .param p1, "option"    # I

    #@0
    .prologue
    .line 14687
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mOptions:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mOptions:I

    #@5
    .line 14686
    return-void
.end method

.method public setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V
    .locals 0
    .param p1, "user"    # Lcom/android/server/pm/SharedUserSetting;

    #@0
    .prologue
    .line 14709
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mSharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@2
    .line 14708
    return-void
.end method

.method public setTitlePrinted(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 14701
    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTitlePrinted:Z

    #@2
    .line 14700
    return-void
.end method
