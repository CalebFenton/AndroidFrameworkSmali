.class final Lcom/android/server/pm/PendingPackage;
.super Lcom/android/server/pm/PackageSettingBase;
.source "PendingPackage.java"


# instance fields
.field final sharedId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/util/List;)V
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p9, "sharedId"    # I
    .param p10, "pVersionCode"    # I
    .param p11, "pkgFlags"    # I
    .param p12, "pkgPrivateFlags"    # I
    .param p13, "parentPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p14, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, p0

    #@1
    move-object/from16 v2, p1

    #@3
    move-object/from16 v3, p2

    #@5
    move-object/from16 v4, p3

    #@7
    move-object/from16 v5, p4

    #@9
    move-object/from16 v6, p5

    #@b
    move-object/from16 v7, p6

    #@d
    move-object/from16 v8, p7

    #@f
    move-object/from16 v9, p8

    #@11
    move/from16 v10, p10

    #@13
    move/from16 v11, p11

    #@15
    move/from16 v12, p12

    #@17
    move-object/from16 v13, p13

    #@19
    move-object/from16 v14, p14

    #@1b
    .line 30
    invoke-direct/range {v1 .. v14}, Lcom/android/server/pm/PackageSettingBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/util/List;)V

    #@1e
    .line 33
    move/from16 v0, p9

    #@20
    iput v0, p0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    #@22
    .line 29
    return-void
.end method
