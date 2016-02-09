.class final Lcom/android/server/pm/PendingPackage;
.super Lcom/android/server/pm/PackageSettingBase;
.source "PendingPackage.java"


# instance fields
.field final sharedId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 13
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

    #@0
    .prologue
    move-object v1, p0

    #@1
    move-object v2, p1

    #@2
    move-object v3, p2

    #@3
    move-object/from16 v4, p3

    #@5
    move-object/from16 v5, p4

    #@7
    move-object/from16 v6, p5

    #@9
    move-object/from16 v7, p6

    #@b
    move-object/from16 v8, p7

    #@d
    move-object/from16 v9, p8

    #@f
    move/from16 v10, p10

    #@11
    move/from16 v11, p11

    #@13
    move/from16 v12, p12

    #@15
    .line 28
    invoke-direct/range {v1 .. v12}, Lcom/android/server/pm/PackageSettingBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    #@18
    .line 31
    move/from16 v0, p9

    #@1a
    iput v0, p0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    #@1c
    .line 27
    return-void
.end method
