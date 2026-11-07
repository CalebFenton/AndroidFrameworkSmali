.class public Lorg/apache/xalan/xslt/EnvironmentCheck;
.super Ljava/lang/Object;
.source "EnvironmentCheck.java"


# static fields
.field public static final greylist CLASS_NOTPRESENT:Ljava/lang/String; = "not-present"

.field public static final greylist CLASS_PRESENT:Ljava/lang/String; = "present-unknown-version"

.field public static final greylist ERROR:Ljava/lang/String; = "ERROR."

.field public static final greylist ERROR_FOUND:Ljava/lang/String; = "At least one error was found!"

.field public static final greylist FOUNDCLASSES:Ljava/lang/String; = "foundclasses."

.field public static final greylist VERSION:Ljava/lang/String; = "version."

.field public static final greylist WARNING:Ljava/lang/String; = "WARNING."

.field private static greylist jarVersions:Ljava/util/Hashtable;


# instance fields
.field public greylist jarNames:[Ljava/lang/String;

.field protected greylist outWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 5

    .line 1184
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    .line 1195
    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xd1468

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_1_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x6b7ad

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_1_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x6a77e

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_1_2_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x68109

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_1_2_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xab848

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_0_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xb0022

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_0_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xb2caa

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_1_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xd4f31

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_2_D10"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xd7833

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_2_D11"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xe18da

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_2_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdd290

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_3_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdd38a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_3_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdd408

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_3_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xf0151

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_4_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xf379c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_4_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xfbb7c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_4_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x91a3c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_2_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x901a7

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_3_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x9005a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_3_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x9005b

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_3_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x13f02b

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_4_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x144463

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_4_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x148209

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_4_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x149309

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_5_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x135b9a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar-bundled from xalan-j_2_3_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x18764

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from xalan-j_2_2_0 or xalan-j_2_3_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a7c4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from xalan-j_2_3_0, or xalan-j_2_3_1 from xml-commons-1.0.b2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a9f9

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from xalan-j_2_4_0 from xml-commons RIVERCOURT1 branch"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1bc55

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from xalan-j_2_4_1 from factoryfinder-build of xml-commons RIVERCOURT1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1e720

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from tck-jaxp-1_2_0 branch of xml-commons"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1e734

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from tck-jaxp-1_2_0 branch of xml-commons, tag: xml-commons-external_1_2_01"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x2f69d

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from head branch of xml-commons, tag: xml-commons-external_1_3_02"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x67a2a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from Xerces Tools releases - ERROR:DO NOT USE!"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x184a2f

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_1_1 from xerces-1..."

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x16de37

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_1_2 from xerces-1_2_0.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x16a860

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_1_2_1 from xerces-1_2_1.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xc466c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_1_2_2 from xerces-1_2_2.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x16e06c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_0_0 from xerces-1_2_3.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x187e92

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_0_1 from xerces-1_3_0.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdcb5e

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v4, "xerces.jar from xalan-j_2_1_0 from xerces-1_4.bin"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xerces-1_4_0.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1b8285

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xerces-1_4_2.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a77c2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from Xerces-J-bin.2.0.0.beta3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1b99f3

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_2_D10,D11,D12 or xerces-1_4_3.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1ba633

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_2_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a3fe4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_3_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a6605

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_3_0 or xalan-j_2_3_1 from xerces-2_0_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a615d

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_4_D1 from xerces-2_0_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xed4fb

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_4_0 from xerces-2_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xcb063

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_4_1 from xerces-2_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xd9ba9

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_5_D1 from xerces-2_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdabb4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xerces-2_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xf6c76

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from Xerces-J-bin.2.6.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x125e94

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from Xerces-J-bin.2.7.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x926d

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanj1compat.jar from xalan-j_2_0_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x94d4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanj1compat.jar from xalan-j_2_0_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x495b

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanservlet.jar from xalan-j_2_0_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x53cd

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanservlet.jar from xalan-j_2_0_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x60fa

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanservlet.jar from xalan-j_2_3_1 or xalan-j_2_4_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x60ff

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanservlet.jar from xalan-j_2_4_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x15f2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "jaxp.jar from jaxp1.0.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x213c5

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "parser.jar from jaxp1.0.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x6ef4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "jaxp.jar from jaxp-1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x2db1a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "crimson.jar from jaxp-1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xc3bb2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from jaxp-1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x2ff2f

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "crimson.jar from crimson-1.1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x822b

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "jaxp.jar from crimson-1.1.1 or jakarta-ant-1.4.1b1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x2548d

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "crimson.jar from crimson-1.1.2beta2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1584f

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from crimson-1.1.2beta2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x32630

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "crimson.jar from crimson-1.1.3 or jakarta-ant-1.4.1b1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x21406

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "parser.jar from jakarta-ant-1.3 or 1.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x15a1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "jaxp.jar from jakarta-ant-1.3 or 1.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 19

    move-object/from16 v0, p0

    .line 92
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 326
    const-string v16, "xml-apis.jar"

    const-string v17, "xsltc.jar"

    const-string v1, "xalan.jar"

    const-string v2, "xalansamples.jar"

    const-string v3, "xalanj1compat.jar"

    const-string v4, "xalanservlet.jar"

    const-string v5, "serializer.jar"

    const-string v6, "xerces.jar"

    const-string v7, "xercesImpl.jar"

    const-string v8, "testxsl.jar"

    const-string v9, "crimson.jar"

    const-string v10, "lotusxsl.jar"

    const-string v11, "jaxp.jar"

    const-string v12, "parser.jar"

    const-string v13, "dom.jar"

    const-string v14, "sax.jar"

    const-string v15, "xml.jar"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    .line 1286
    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v1, v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    return-void
.end method

.method public static greylist main([Ljava/lang/String;)V
    .registers 8

    .line 104
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    const/4 v1, 0x0

    .line 107
    :goto_9
    array-length v3, p0

    if-ge v1, v3, :cond_58

    .line 109
    const-string v3, "-out"

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    add-int/lit8 v1, v1, 0x1

    .line 113
    array-length v3, p0

    if-ge v1, v3, :cond_4f

    .line 117
    :try_start_1b
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/FileWriter;

    aget-object v5, p0, v1

    invoke-direct {v4, v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_27} :catch_29

    move-object v0, v3

    goto :goto_56

    :catch_29
    move-exception v3

    .line 121
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# WARNING: -out "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " threw "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_56

    .line 127
    :cond_4f
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "# WARNING: -out argument should have a filename, output sent to console"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_56
    :goto_56
    add-int/2addr v1, v2

    goto :goto_9

    .line 133
    :cond_58
    new-instance p0, Lorg/apache/xalan/xslt/EnvironmentCheck;

    invoke-direct {p0}, Lorg/apache/xalan/xslt/EnvironmentCheck;-><init>()V

    .line 134
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkEnvironment(Ljava/io/PrintWriter;)Z

    return-void
.end method


# virtual methods
.method public greylist appendEnvironmentReport(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Ljava/util/Hashtable;)V
    .registers 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 411
    const-string v3, "key"

    const-string v4, "item"

    if-eqz v0, :cond_f6

    if-nez v1, :cond_10

    goto/16 :goto_f6

    .line 418
    :cond_10
    :try_start_10
    const-string v5, "EnvironmentCheck"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 419
    const-string v6, "version"

    const-string v7, "$Revision: 468646 $"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-interface {v0, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_20} :catch_d8

    .line 422
    const-string v6, "ERROR"

    const-string v7, "result"

    const-string v8, "status"

    if-nez v2, :cond_3c

    .line 424
    :try_start_28
    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 425
    invoke-interface {v0, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v2, "appendEnvironmentReport called with null Hashtable!"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 427
    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    .line 433
    :cond_3c
    const-string v0, "environment"

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 434
    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 436
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    const/4 v0, 0x0

    .line 437
    :goto_4a
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_c8

    .line 441
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    .line 442
    move-object v12, v11

    check-cast v12, Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_57} :catch_d8

    .line 446
    :try_start_57
    const-string v14, "foundclasses."

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_73

    .line 448
    invoke-virtual {v2, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Vector;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_65} :catch_6f

    move-object/from16 v15, p0

    .line 450
    :try_start_67
    invoke-virtual {v15, v9, v1, v14, v12}, Lorg/apache/xalan/xslt/EnvironmentCheck;->appendFoundJars(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v0, v11

    goto :goto_4a

    :catch_6d
    move-exception v0

    goto :goto_98

    :catch_6f
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_98

    :cond_73
    move-object/from16 v15, p0

    .line 459
    const-string v14, "ERROR."

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7e

    const/4 v0, 0x1

    .line 463
    :cond_7e
    invoke-interface {v1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 464
    invoke-interface {v14, v3, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {v2, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Ljava/lang/String;

    invoke-interface {v1, v13}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v13

    invoke-interface {v14, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 466
    invoke-interface {v9, v14}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_97} :catch_6d

    goto :goto_4a

    .line 472
    :goto_98
    :try_start_98
    invoke-interface {v1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 473
    invoke-interface {v13, v3, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ERROR. Reading "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " threw: "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 475
    invoke-interface {v9, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v0, 0x1

    goto :goto_4a

    .line 479
    :cond_c8
    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v0, :cond_cf

    goto :goto_d1

    .line 480
    :cond_cf
    const-string v6, "OK"

    :goto_d1
    invoke-interface {v1, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-interface {v5, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_d7} :catch_d8

    goto :goto_f6

    :catch_d8
    move-exception v0

    .line 485
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appendEnvironmentReport threw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f6
    :goto_f6
    return-void
.end method

.method protected greylist appendFoundJars(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Ljava/util/Vector;Ljava/lang/String;)Z
    .registers 16

    .line 509
    const-string p0, "-"

    const-string p4, "foundJar"

    const/4 v0, 0x0

    if-eqz p3, :cond_9b

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_10

    goto/16 :goto_9b

    :cond_10
    move v1, v0

    move v3, v1

    .line 514
    :goto_12
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_9a

    .line 516
    invoke-virtual {p3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    .line 518
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 519
    :goto_22
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_96

    .line 523
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    .line 526
    :try_start_2c
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 527
    const-string v8, "ERROR."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_38

    move v3, v2

    .line 531
    :cond_38
    invoke-interface {p2, p4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 532
    const-string v9, "name"

    invoke-virtual {v7, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v9, "desc"

    invoke-virtual {v7, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p2, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    invoke-interface {v8, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 535
    invoke-interface {p1, v8}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_67} :catch_68

    goto :goto_22

    :catch_68
    move-exception v3

    .line 540
    invoke-interface {p2, p4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 541
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR. Reading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " threw: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    invoke-interface {v7, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 542
    invoke-interface {p1, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v3, v2

    goto :goto_22

    :cond_96
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_12

    :cond_9a
    return v3

    :cond_9b
    :goto_9b
    return v0
.end method

.method protected greylist checkAntVersion(Ljava/util/Hashtable;)V
    .registers 5

    .line 987
    const-string p0, "version.ant"

    if-nez p1, :cond_9

    .line 988
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_9
    const/4 v0, 0x0

    .line 994
    :try_start_a
    new-array v0, v0, [Ljava/lang/Class;

    .line 996
    const-string v0, "org.apache.tools.ant.Main"

    .line 997
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    .line 996
    invoke-static {v0, v1, v2}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    .line 999
    const-string v1, "getAntVersion"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1000
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1002
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_27} :catch_28

    return-void

    .line 1006
    :catch_28
    const-string v0, "not-present"

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected greylist checkDOMVersion(Ljava/util/Hashtable;)V
    .registers 9

    .line 1022
    const-string p0, "ERROR.version.DOM.draftlevel"

    const-string v0, "org.w3c.dom.Node"

    const-string v1, "At least one error was found!"

    const-string v2, "ERROR."

    if-nez p1, :cond_f

    .line 1023
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_f
    const/4 v3, 0x2

    .line 1031
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v5, v3, v4

    .line 1036
    :try_start_1a
    const-string v5, "org.w3c.dom.Document"

    .line 1037
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 1036
    invoke-static {v5, v6, v4}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v5

    .line 1039
    const-string v6, "createElementNS"

    invoke-virtual {v5, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1043
    const-string v5, "version.DOM"

    const-string v6, "2.0"

    invoke-virtual {p1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_30} :catch_64

    .line 1050
    :try_start_30
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 1049
    invoke-static {v0, v5, v4}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v5

    .line 1052
    const-string v6, "supported"

    invoke-virtual {v5, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1054
    const-string v5, "2.0wd"

    invoke-virtual {p1, p0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    invoke-virtual {p1, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_45} :catch_46

    goto :goto_82

    .line 1063
    :catch_46
    :try_start_46
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 1062
    invoke-static {v0, v5, v4}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    .line 1065
    const-string v4, "isSupported"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1067
    const-string v0, "version.DOM.draftlevel"

    const-string v3, "2.0fd"

    invoke-virtual {p1, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5a} :catch_5b

    goto :goto_82

    .line 1071
    :catch_5b
    :try_start_5b
    const-string v0, "2.0unknown"

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    invoke-virtual {p1, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_63} :catch_64

    goto :goto_82

    :catch_64
    move-exception p0

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR attempting to load DOM level 2 class: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1078
    const-string v0, "ERROR.version.DOM"

    invoke-virtual {p1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    invoke-virtual {p1, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_82
    return-void
.end method

.method public greylist checkEnvironment(Ljava/io/PrintWriter;)Z
    .registers 2

    if-eqz p1, :cond_4

    .line 166
    iput-object p1, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    .line 169
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->getEnvironmentHash()Ljava/util/Hashtable;

    move-result-object p1

    .line 172
    invoke-virtual {p0, p1}, Lorg/apache/xalan/xslt/EnvironmentCheck;->writeEnvironmentReport(Ljava/util/Hashtable;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 178
    const-string p1, "# WARNING: Potential problems found in your environment!"

    invoke-virtual {p0, p1}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    .line 179
    const-string p1, "#    Check any \'ERROR\' items above against the Xalan FAQs"

    invoke-virtual {p0, p1}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    .line 180
    const-string p1, "#    to correct potential problems with your classes/jars"

    invoke-virtual {p0, p1}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    .line 181
    const-string p1, "#    http://xml.apache.org/xalan-j/faq.html"

    invoke-virtual {p0, p1}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    .line 182
    iget-object p0, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    if-eqz p0, :cond_29

    .line 183
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_29
    const/4 p0, 0x0

    return p0

    .line 188
    :cond_2b
    const-string p1, "# YAHOO! Your environment seems to be OK."

    invoke-virtual {p0, p1}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    if-eqz p0, :cond_37

    .line 190
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_37
    const/4 p0, 0x1

    return p0
.end method

.method protected greylist checkJAXPVersion(Ljava/util/Hashtable;)V
    .registers 5

    if-nez p1, :cond_7

    .line 785
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_7
    const/4 p0, 0x0

    .line 787
    new-array p0, p0, [Ljava/lang/Class;

    const/4 p0, 0x0

    .line 795
    :try_start_b
    const-string v0, "javax.xml.parsers.DocumentBuilder"

    .line 796
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    .line 795
    invoke-static {v0, v1, v2}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_24

    .line 798
    :try_start_16
    const-string v1, "getDOMImplementation"

    invoke-virtual {v0, v1, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 801
    const-string p0, "version.JAXP"

    const-string v1, "1.1 or higher"

    invoke-virtual {p1, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-object p0, v0

    .line 805
    :catch_24
    const-string v0, "At least one error was found!"

    const-string v1, "ERROR."

    const-string v2, "ERROR.version.JAXP"

    if-eqz p0, :cond_35

    .line 810
    const-string p0, "1.0.1"

    invoke-virtual {p1, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 818
    :cond_35
    const-string p0, "not-present"

    invoke-virtual {p1, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3d
    return-void
.end method

.method protected greylist checkParserVersion(Ljava/util/Hashtable;)V
    .registers 10

    .line 923
    const-string p0, "version.crimson"

    const-string v0, "version.xerces2"

    const-string v1, "version.xerces1"

    const-string v2, "fVersion"

    const-string v3, "not-present"

    if-nez p1, :cond_11

    .line 924
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_11
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 930
    :try_start_13
    const-string v6, "org.apache.xerces.framework.Version"

    .line 931
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 930
    invoke-static {v6, v7, v5}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v6

    .line 934
    invoke-virtual {v6, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 935
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 937
    invoke-virtual {p1, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2a} :catch_2b

    goto :goto_2e

    .line 941
    :catch_2b
    invoke-virtual {p1, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    :goto_2e
    :try_start_2e
    const-string v1, "org.apache.xerces.impl.Version"

    .line 950
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 949
    invoke-static {v1, v6, v5}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 953
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 954
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 956
    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_45} :catch_46

    goto :goto_49

    .line 960
    :catch_46
    invoke-virtual {p1, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    :goto_49
    :try_start_49
    const-string v0, "org.apache.crimson.parser.Parser2"

    .line 968
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 967
    invoke-static {v0, v1, v5}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    .line 971
    const-string v0, "present-unknown-version"

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_57} :catch_58

    goto :goto_5b

    .line 975
    :catch_58
    invoke-virtual {p1, p0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5b
    return-void
.end method

.method protected greylist checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;
    .registers 12

    if-eqz p1, :cond_d8

    if-eqz p2, :cond_d8

    .line 659
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d8

    array-length v0, p2

    if-nez v0, :cond_f

    goto/16 :goto_d8

    .line 663
    :cond_f
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 664
    new-instance v1, Ljava/util/StringTokenizer;

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_1b
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_d7

    .line 670
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 672
    :goto_26
    array-length v3, p2

    if-ge v2, v3, :cond_1b

    .line 674
    aget-object v3, p2, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_d3

    .line 676
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "-apparent.version"

    const-string v6, "-path"

    const/4 v7, 0x2

    if-eqz v4, :cond_8b

    .line 685
    :try_start_42
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4, v7}, Ljava/util/Hashtable;-><init>(I)V

    .line 687
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p2, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const-string v6, "xalan.jar"

    aget-object v7, p2, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_87

    .line 695
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p2, v2

    .line 696
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/xalan/xslt/EnvironmentCheck;->getApparentVersion(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 695
    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_87
    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_8a} :catch_d3

    goto :goto_d3

    .line 708
    :cond_8b
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3, v7}, Ljava/util/Hashtable;-><init>(I)V

    .line 710
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, v2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING. Classpath entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p2, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "not-present"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :catch_d3
    :cond_d3
    :goto_d3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_26

    :cond_d7
    return-object v0

    :cond_d8
    :goto_d8
    const/4 p0, 0x0

    return-object p0
.end method

.method protected greylist checkProcessorVersion(Ljava/util/Hashtable;)V
    .registers 12

    .line 834
    const-string p0, "version.xalan2_2"

    const-string v0, "version.xalan2x"

    const-string v1, "version.xalan1"

    const-string v2, "S_VERSION"

    const-string v3, "not-present"

    if-nez p1, :cond_11

    .line 835
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_11
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 842
    :try_start_13
    const-string v6, "org.apache.xalan.xslt.XSLProcessorVersion"

    .line 843
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 842
    invoke-static {v6, v7, v4}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v6

    .line 846
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 847
    const-string v8, "PRODUCT"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 849
    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v8, 0x3b

    .line 850
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 852
    const-string v9, "LANGUAGE"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 854
    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 855
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 857
    invoke-virtual {v6, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 859
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 860
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 861
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_59} :catch_5a

    goto :goto_5d

    .line 865
    :catch_5a
    invoke-virtual {p1, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    :goto_5d
    :try_start_5d
    const-string v1, "org.apache.xalan.processor.XSLProcessorVersion"

    .line 876
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 875
    invoke-static {v1, v6, v4}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 879
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 880
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 881
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 883
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_7e} :catch_7f

    goto :goto_82

    .line 887
    :catch_7f
    invoke-virtual {p1, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_82
    const/4 v0, 0x0

    .line 895
    :try_start_83
    new-array v0, v0, [Ljava/lang/Class;

    .line 897
    const-string v0, "org.apache.xalan.Version"

    .line 898
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 897
    invoke-static {v0, v1, v4}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    .line 900
    const-string v1, "getVersion"

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 901
    invoke-virtual {v0, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 903
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_9e} :catch_9f

    goto :goto_a2

    .line 907
    :catch_9f
    invoke-virtual {p1, p0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a2
    return-void
.end method

.method protected greylist checkSAXVersion(Ljava/util/Hashtable;)V
    .registers 12

    .line 1100
    const-string p0, "version.SAX-backlevel"

    const-string v0, "parse"

    if-nez p1, :cond_b

    .line 1101
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_b
    const/4 v1, 0x1

    .line 1109
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1111
    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Lorg/xml/sax/Attributes;

    aput-object v5, v3, v4

    .line 1117
    :try_start_19
    const-string v4, "org.xml.sax.helpers.AttributesImpl"

    .line 1118
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 1117
    invoke-static {v4, v5, v1}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v4

    .line 1120
    const-string v5, "setAttributes"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1124
    const-string v3, "version.SAX"

    const-string v4, "2.0"

    invoke-virtual {p1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception v3

    .line 1129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR attempting to load SAX version 2 class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1129
    const-string v6, "ERROR.version.SAX"

    invoke-virtual {p1, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    const-string v4, "ERROR."

    const-string v7, "At least one error was found!"

    invoke-virtual {p1, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    :try_start_52
    const-string v8, "org.xml.sax.XMLReader"

    .line 1136
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 1135
    invoke-static {v8, v9, v1}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v8

    .line 1138
    invoke-virtual {v8, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1143
    const-string v8, "2.0beta2-or-earlier"

    invoke-virtual {p1, p0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_64} :catch_65

    goto :goto_ac

    .line 1148
    :catch_65
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1148
    invoke-virtual {p1, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    invoke-virtual {p1, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    :try_start_7e
    const-string v3, "org.xml.sax.Parser"

    .line 1155
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 1154
    invoke-static {v3, v4, v1}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 1157
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1162
    const-string v0, "1.0"

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_90} :catch_91

    goto :goto_ac

    :catch_91
    move-exception p0

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR attempting to load SAX version 1 class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1168
    const-string v0, "ERROR.version.SAX-backlevel"

    invoke-virtual {p1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_ac
    return-void
.end method

.method protected greylist checkSystemProperties(Ljava/util/Hashtable;)V
    .registers 7

    .line 565
    const-string v0, "java.ext.dirs"

    const-string v1, "sun.boot.class.path"

    const-string v2, "java.class.path"

    const-string v3, "java.version"

    if-nez p1, :cond_f

    .line 566
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    .line 571
    :cond_f
    :try_start_f
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 573
    invoke-virtual {p1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_1c

    .line 579
    :catch_17
    const-string v4, "WARNING: SecurityException thrown accessing system version properties"

    invoke-virtual {p1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :goto_1c
    :try_start_1c
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 592
    invoke-virtual {p1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    iget-object v4, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 597
    const-string v4, "foundclasses.java.class.path"

    invoke-virtual {p1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    :cond_30
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 604
    invoke-virtual {p1, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v1, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 609
    const-string v3, "foundclasses.sun.boot.class.path"

    invoke-virtual {p1, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :cond_46
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 618
    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    iget-object v0, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    if-eqz p0, :cond_62

    .line 623
    const-string v0, "foundclasses.java.ext.dirs"

    invoke-virtual {p1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_5c} :catch_5d

    goto :goto_62

    .line 633
    :catch_5d
    const-string p0, "WARNING: SecurityException thrown accessing system classpath properties"

    invoke-virtual {p1, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    :goto_62
    return-void
.end method

.method protected greylist getApparentVersion(Ljava/lang/String;J)Ljava/lang/String;
    .registers 5

    .line 745
    sget-object p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_16

    .line 747
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_16

    return-object p0

    .line 753
    :cond_16
    const-string p0, "xerces.jar"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const-string p2, "present-unknown-version"

    const-string p3, " "

    if-nez p0, :cond_3e

    const-string p0, "xercesImpl.jar"

    .line 754
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_3e

    .line 767
    :cond_2b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 761
    :cond_3e
    :goto_3e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "WARNING."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getEnvironmentHash()Ljava/util/Hashtable;
    .registers 2

    .line 218
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 223
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkJAXPVersion(Ljava/util/Hashtable;)V

    .line 224
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkProcessorVersion(Ljava/util/Hashtable;)V

    .line 225
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkParserVersion(Ljava/util/Hashtable;)V

    .line 226
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkAntVersion(Ljava/util/Hashtable;)V

    .line 227
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkDOMVersion(Ljava/util/Hashtable;)V

    .line 228
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkSAXVersion(Ljava/util/Hashtable;)V

    .line 229
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkSystemProperties(Ljava/util/Hashtable;)V

    return-object v0
.end method

.method protected greylist logFoundJars(Ljava/util/Vector;Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_a8

    .line 356
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_c

    goto/16 :goto_a8

    .line 361
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#---- BEGIN Listing XML-related jars in: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ----"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    move v1, v0

    .line 363
    :goto_26
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_8e

    .line 365
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    .line 367
    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 368
    :goto_36
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 372
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    .line 373
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .line 376
    :try_start_43
    const-string v7, "ERROR."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4c

    move v1, v2

    .line 380
    :cond_4c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_67} :catch_68

    goto :goto_36

    :catch_68
    move-exception v1

    .line 386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "= threw: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    move v1, v2

    goto :goto_36

    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 391
    :cond_8e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#----- END Listing XML-related jars in: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -----"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    return v1

    :cond_a8
    :goto_a8
    return v0
.end method

.method protected greylist logMsg(Ljava/lang/String;)V
    .registers 2

    .line 1294
    iget-object p0, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected greylist writeEnvironmentReport(Ljava/util/Hashtable;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 253
    const-string p1, "# ERROR: writeEnvironmentReport called with null Hashtable"

    invoke-virtual {p0, p1}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    return v0

    .line 259
    :cond_9
    const-string v1, "#---- BEGIN writeEnvironmentReport($Revision: 468646 $): Useful stuff found: ----"

    invoke-virtual {p0, v1}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 264
    :goto_12
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 268
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 269
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 273
    :try_start_1f
    const-string v4, "foundclasses."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 275
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    .line 276
    invoke-virtual {p0, v4, v3}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logFoundJars(Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_12

    :catch_33
    move-exception v3

    goto :goto_5a

    .line 285
    :cond_35
    const-string v4, "ERROR."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    const/4 v0, 0x1

    .line 289
    :cond_3e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_59} :catch_33

    goto :goto_12

    .line 294
    :goto_5a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "= threw: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    goto :goto_12

    .line 298
    :cond_7b
    const-string p1, "#----- END writeEnvironmentReport: Useful properties found: -----"

    invoke-virtual {p0, p1}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    return v0
.end method
