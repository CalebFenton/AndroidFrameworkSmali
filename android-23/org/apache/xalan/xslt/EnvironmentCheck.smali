.class public Lorg/apache/xalan/xslt/EnvironmentCheck;
.super Ljava/lang/Object;
.source "EnvironmentCheck.java"


# static fields
.field public static final CLASS_NOTPRESENT:Ljava/lang/String; = "not-present"

.field public static final CLASS_PRESENT:Ljava/lang/String; = "present-unknown-version"

.field public static final ERROR:Ljava/lang/String; = "ERROR."

.field public static final ERROR_FOUND:Ljava/lang/String; = "At least one error was found!"

.field public static final FOUNDCLASSES:Ljava/lang/String; = "foundclasses."

.field public static final VERSION:Ljava/lang/String; = "version."

.field public static final WARNING:Ljava/lang/String; = "WARNING."

.field private static jarVersions:Ljava/util/Hashtable;


# instance fields
.field public jarNames:[Ljava/lang/String;

.field protected outWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const-wide/32 v4, 0xdcb5e

    #@3
    .line 1184
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    sput-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@a
    .line 1195
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@c
    new-instance v1, Ljava/lang/Long;

    #@e
    const-wide/32 v2, 0xd1468

    #@11
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@14
    const-string/jumbo v2, "xalan.jar from xalan-j_1_1"

    #@17
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 1196
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@1c
    new-instance v1, Ljava/lang/Long;

    #@1e
    const-wide/32 v2, 0x6b7ad

    #@21
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@24
    const-string/jumbo v2, "xalan.jar from xalan-j_1_2"

    #@27
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 1197
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@2c
    new-instance v1, Ljava/lang/Long;

    #@2e
    const-wide/32 v2, 0x6a77e

    #@31
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@34
    const-string/jumbo v2, "xalan.jar from xalan-j_1_2_1"

    #@37
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 1198
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@3c
    new-instance v1, Ljava/lang/Long;

    #@3e
    const-wide/32 v2, 0x68109

    #@41
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@44
    const-string/jumbo v2, "xalan.jar from xalan-j_1_2_2"

    #@47
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    .line 1199
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@4c
    new-instance v1, Ljava/lang/Long;

    #@4e
    const-wide/32 v2, 0xab848

    #@51
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@54
    const-string/jumbo v2, "xalan.jar from xalan-j_2_0_0"

    #@57
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    .line 1200
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@5c
    new-instance v1, Ljava/lang/Long;

    #@5e
    const-wide/32 v2, 0xb0022

    #@61
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@64
    const-string/jumbo v2, "xalan.jar from xalan-j_2_0_1"

    #@67
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    .line 1201
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@6c
    new-instance v1, Ljava/lang/Long;

    #@6e
    const-wide/32 v2, 0xb2caa

    #@71
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@74
    const-string/jumbo v2, "xalan.jar from xalan-j_2_1_0"

    #@77
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7a
    .line 1202
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@7c
    new-instance v1, Ljava/lang/Long;

    #@7e
    const-wide/32 v2, 0xd4f31

    #@81
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@84
    const-string/jumbo v2, "xalan.jar from xalan-j_2_2_D10"

    #@87
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    .line 1203
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@8c
    new-instance v1, Ljava/lang/Long;

    #@8e
    const-wide/32 v2, 0xd7833

    #@91
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@94
    const-string/jumbo v2, "xalan.jar from xalan-j_2_2_D11"

    #@97
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    .line 1204
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@9c
    new-instance v1, Ljava/lang/Long;

    #@9e
    const-wide/32 v2, 0xe18da

    #@a1
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@a4
    const-string/jumbo v2, "xalan.jar from xalan-j_2_2_0"

    #@a7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@aa
    .line 1205
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@ac
    new-instance v1, Ljava/lang/Long;

    #@ae
    const-wide/32 v2, 0xdd290

    #@b1
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@b4
    const-string/jumbo v2, "xalan.jar from xalan-j_2_3_D1"

    #@b7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ba
    .line 1206
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@bc
    new-instance v1, Ljava/lang/Long;

    #@be
    const-wide/32 v2, 0xdd38a

    #@c1
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@c4
    const-string/jumbo v2, "xalan.jar from xalan-j_2_3_0"

    #@c7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ca
    .line 1207
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@cc
    new-instance v1, Ljava/lang/Long;

    #@ce
    const-wide/32 v2, 0xdd408

    #@d1
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@d4
    const-string/jumbo v2, "xalan.jar from xalan-j_2_3_1"

    #@d7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@da
    .line 1208
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@dc
    new-instance v1, Ljava/lang/Long;

    #@de
    const-wide/32 v2, 0xf0151

    #@e1
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@e4
    const-string/jumbo v2, "xalan.jar from xalan-j_2_4_D1"

    #@e7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ea
    .line 1209
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@ec
    new-instance v1, Ljava/lang/Long;

    #@ee
    const-wide/32 v2, 0xf379c

    #@f1
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@f4
    const-string/jumbo v2, "xalan.jar from xalan-j_2_4_0"

    #@f7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fa
    .line 1210
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@fc
    new-instance v1, Ljava/lang/Long;

    #@fe
    const-wide/32 v2, 0xfbb7c

    #@101
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@104
    const-string/jumbo v2, "xalan.jar from xalan-j_2_4_1"

    #@107
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10a
    .line 1213
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@10c
    new-instance v1, Ljava/lang/Long;

    #@10e
    const-wide/32 v2, 0x91a3c

    #@111
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@114
    const-string/jumbo v2, "xsltc.jar from xalan-j_2_2_0"

    #@117
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11a
    .line 1214
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@11c
    new-instance v1, Ljava/lang/Long;

    #@11e
    const-wide/32 v2, 0x901a7

    #@121
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@124
    const-string/jumbo v2, "xsltc.jar from xalan-j_2_3_D1"

    #@127
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12a
    .line 1215
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@12c
    new-instance v1, Ljava/lang/Long;

    #@12e
    const-wide/32 v2, 0x9005a

    #@131
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@134
    const-string/jumbo v2, "xsltc.jar from xalan-j_2_3_0"

    #@137
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13a
    .line 1216
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@13c
    new-instance v1, Ljava/lang/Long;

    #@13e
    const-wide/32 v2, 0x9005b

    #@141
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@144
    const-string/jumbo v2, "xsltc.jar from xalan-j_2_3_1"

    #@147
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14a
    .line 1217
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@14c
    new-instance v1, Ljava/lang/Long;

    #@14e
    const-wide/32 v2, 0x13f02b

    #@151
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@154
    const-string/jumbo v2, "xsltc.jar from xalan-j_2_4_D1"

    #@157
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15a
    .line 1218
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@15c
    new-instance v1, Ljava/lang/Long;

    #@15e
    const-wide/32 v2, 0x144463

    #@161
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@164
    const-string/jumbo v2, "xsltc.jar from xalan-j_2_4_0"

    #@167
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16a
    .line 1219
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@16c
    new-instance v1, Ljava/lang/Long;

    #@16e
    const-wide/32 v2, 0x148209

    #@171
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@174
    const-string/jumbo v2, "xsltc.jar from xalan-j_2_4_1"

    #@177
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17a
    .line 1220
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@17c
    new-instance v1, Ljava/lang/Long;

    #@17e
    const-wide/32 v2, 0x149309

    #@181
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@184
    const-string/jumbo v2, "xsltc.jar from xalan-j_2_5_D1"

    #@187
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18a
    .line 1223
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@18c
    new-instance v1, Ljava/lang/Long;

    #@18e
    const-wide/32 v2, 0x135b9a

    #@191
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@194
    const-string/jumbo v2, "xsltc.jar-bundled from xalan-j_2_3_0"

    #@197
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19a
    .line 1225
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@19c
    new-instance v1, Ljava/lang/Long;

    #@19e
    const-wide/32 v2, 0x18764

    #@1a1
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@1a4
    const-string/jumbo v2, "xml-apis.jar from xalan-j_2_2_0 or xalan-j_2_3_D1"

    #@1a7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1aa
    .line 1226
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@1ac
    new-instance v1, Ljava/lang/Long;

    #@1ae
    const-wide/32 v2, 0x1a7c4

    #@1b1
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@1b4
    const-string/jumbo v2, "xml-apis.jar from xalan-j_2_3_0, or xalan-j_2_3_1 from xml-commons-1.0.b2"

    #@1b7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ba
    .line 1227
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@1bc
    new-instance v1, Ljava/lang/Long;

    #@1be
    const-wide/32 v2, 0x1a9f9

    #@1c1
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@1c4
    const-string/jumbo v2, "xml-apis.jar from xalan-j_2_4_0 from xml-commons RIVERCOURT1 branch"

    #@1c7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ca
    .line 1228
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@1cc
    new-instance v1, Ljava/lang/Long;

    #@1ce
    const-wide/32 v2, 0x1bc55

    #@1d1
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@1d4
    const-string/jumbo v2, "xml-apis.jar from xalan-j_2_4_1 from factoryfinder-build of xml-commons RIVERCOURT1"

    #@1d7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1da
    .line 1229
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@1dc
    new-instance v1, Ljava/lang/Long;

    #@1de
    const-wide/32 v2, 0x1e720

    #@1e1
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@1e4
    const-string/jumbo v2, "xml-apis.jar from tck-jaxp-1_2_0 branch of xml-commons"

    #@1e7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ea
    .line 1230
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@1ec
    new-instance v1, Ljava/lang/Long;

    #@1ee
    const-wide/32 v2, 0x1e734

    #@1f1
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@1f4
    const-string/jumbo v2, "xml-apis.jar from tck-jaxp-1_2_0 branch of xml-commons, tag: xml-commons-external_1_2_01"

    #@1f7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1fa
    .line 1231
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@1fc
    new-instance v1, Ljava/lang/Long;

    #@1fe
    const-wide/32 v2, 0x2f69d

    #@201
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@204
    const-string/jumbo v2, "xml-apis.jar from head branch of xml-commons, tag: xml-commons-external_1_3_02"

    #@207
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20a
    .line 1235
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@20c
    new-instance v1, Ljava/lang/Long;

    #@20e
    const-wide/32 v2, 0x67a2a

    #@211
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@214
    const-string/jumbo v2, "xalan.jar from Xerces Tools releases - ERROR:DO NOT USE!"

    #@217
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21a
    .line 1237
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@21c
    new-instance v1, Ljava/lang/Long;

    #@21e
    const-wide/32 v2, 0x184a2f

    #@221
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@224
    const-string/jumbo v2, "xerces.jar from xalan-j_1_1 from xerces-1..."

    #@227
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22a
    .line 1238
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@22c
    new-instance v1, Ljava/lang/Long;

    #@22e
    const-wide/32 v2, 0x16de37

    #@231
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@234
    const-string/jumbo v2, "xerces.jar from xalan-j_1_2 from xerces-1_2_0.bin"

    #@237
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23a
    .line 1239
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@23c
    new-instance v1, Ljava/lang/Long;

    #@23e
    const-wide/32 v2, 0x16a860

    #@241
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@244
    const-string/jumbo v2, "xerces.jar from xalan-j_1_2_1 from xerces-1_2_1.bin"

    #@247
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24a
    .line 1240
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@24c
    new-instance v1, Ljava/lang/Long;

    #@24e
    const-wide/32 v2, 0xc466c

    #@251
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@254
    const-string/jumbo v2, "xerces.jar from xalan-j_1_2_2 from xerces-1_2_2.bin"

    #@257
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25a
    .line 1241
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@25c
    new-instance v1, Ljava/lang/Long;

    #@25e
    const-wide/32 v2, 0x16e06c

    #@261
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@264
    const-string/jumbo v2, "xerces.jar from xalan-j_2_0_0 from xerces-1_2_3.bin"

    #@267
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26a
    .line 1242
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@26c
    new-instance v1, Ljava/lang/Long;

    #@26e
    const-wide/32 v2, 0x187e92

    #@271
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@274
    const-string/jumbo v2, "xerces.jar from xalan-j_2_0_1 from xerces-1_3_0.bin"

    #@277
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27a
    .line 1243
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@27c
    new-instance v1, Ljava/lang/Long;

    #@27e
    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    #@281
    const-string/jumbo v2, "xerces.jar from xalan-j_2_1_0 from xerces-1_4.bin"

    #@284
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@287
    .line 1244
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@289
    new-instance v1, Ljava/lang/Long;

    #@28b
    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    #@28e
    const-string/jumbo v2, "xerces.jar from xerces-1_4_0.bin"

    #@291
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@294
    .line 1245
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@296
    new-instance v1, Ljava/lang/Long;

    #@298
    const-wide/32 v2, 0x1b8285

    #@29b
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@29e
    const-string/jumbo v2, "xerces.jar from xerces-1_4_2.bin"

    #@2a1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a4
    .line 1246
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@2a6
    new-instance v1, Ljava/lang/Long;

    #@2a8
    const-wide/32 v2, 0x1a77c2

    #@2ab
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@2ae
    const-string/jumbo v2, "xerces.jar from Xerces-J-bin.2.0.0.beta3"

    #@2b1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b4
    .line 1247
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@2b6
    new-instance v1, Ljava/lang/Long;

    #@2b8
    const-wide/32 v2, 0x1b99f3

    #@2bb
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@2be
    const-string/jumbo v2, "xerces.jar from xalan-j_2_2_D10,D11,D12 or xerces-1_4_3.bin"

    #@2c1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c4
    .line 1248
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@2c6
    new-instance v1, Ljava/lang/Long;

    #@2c8
    const-wide/32 v2, 0x1ba633

    #@2cb
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@2ce
    const-string/jumbo v2, "xerces.jar from xalan-j_2_2_0"

    #@2d1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d4
    .line 1249
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@2d6
    new-instance v1, Ljava/lang/Long;

    #@2d8
    const-wide/32 v2, 0x1a3fe4

    #@2db
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@2de
    const-string/jumbo v2, "xercesImpl.jar from xalan-j_2_3_D1"

    #@2e1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e4
    .line 1250
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@2e6
    new-instance v1, Ljava/lang/Long;

    #@2e8
    const-wide/32 v2, 0x1a6605

    #@2eb
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@2ee
    const-string/jumbo v2, "xercesImpl.jar from xalan-j_2_3_0 or xalan-j_2_3_1 from xerces-2_0_0"

    #@2f1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f4
    .line 1251
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@2f6
    new-instance v1, Ljava/lang/Long;

    #@2f8
    const-wide/32 v2, 0x1a615d

    #@2fb
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@2fe
    const-string/jumbo v2, "xercesImpl.jar from xalan-j_2_4_D1 from xerces-2_0_1"

    #@301
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@304
    .line 1252
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@306
    new-instance v1, Ljava/lang/Long;

    #@308
    const-wide/32 v2, 0xed4fb

    #@30b
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@30e
    const-string/jumbo v2, "xercesImpl.jar from xalan-j_2_4_0 from xerces-2_1"

    #@311
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@314
    .line 1253
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@316
    new-instance v1, Ljava/lang/Long;

    #@318
    const-wide/32 v2, 0xcb063

    #@31b
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@31e
    const-string/jumbo v2, "xercesImpl.jar from xalan-j_2_4_1 from xerces-2_2"

    #@321
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@324
    .line 1254
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@326
    new-instance v1, Ljava/lang/Long;

    #@328
    const-wide/32 v2, 0xd9ba9

    #@32b
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@32e
    const-string/jumbo v2, "xercesImpl.jar from xalan-j_2_5_D1 from xerces-2_3"

    #@331
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@334
    .line 1255
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@336
    new-instance v1, Ljava/lang/Long;

    #@338
    const-wide/32 v2, 0xdabb4

    #@33b
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@33e
    const-string/jumbo v2, "xercesImpl.jar from xerces-2_4"

    #@341
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@344
    .line 1256
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@346
    new-instance v1, Ljava/lang/Long;

    #@348
    const-wide/32 v2, 0xf6c76

    #@34b
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@34e
    const-string/jumbo v2, "xercesImpl.jar from Xerces-J-bin.2.6.2"

    #@351
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@354
    .line 1257
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@356
    new-instance v1, Ljava/lang/Long;

    #@358
    const-wide/32 v2, 0x125e94

    #@35b
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@35e
    const-string/jumbo v2, "xercesImpl.jar from Xerces-J-bin.2.7.1"

    #@361
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@364
    .line 1259
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@366
    new-instance v1, Ljava/lang/Long;

    #@368
    const-wide/32 v2, 0x926d

    #@36b
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@36e
    const-string/jumbo v2, "xalanj1compat.jar from xalan-j_2_0_0"

    #@371
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@374
    .line 1260
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@376
    new-instance v1, Ljava/lang/Long;

    #@378
    const-wide/32 v2, 0x94d4

    #@37b
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@37e
    const-string/jumbo v2, "xalanj1compat.jar from xalan-j_2_0_1"

    #@381
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@384
    .line 1262
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@386
    new-instance v1, Ljava/lang/Long;

    #@388
    const-wide/16 v2, 0x495b

    #@38a
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@38d
    const-string/jumbo v2, "xalanservlet.jar from xalan-j_2_0_0"

    #@390
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@393
    .line 1263
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@395
    new-instance v1, Ljava/lang/Long;

    #@397
    const-wide/16 v2, 0x53cd

    #@399
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@39c
    const-string/jumbo v2, "xalanservlet.jar from xalan-j_2_0_1"

    #@39f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a2
    .line 1264
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@3a4
    new-instance v1, Ljava/lang/Long;

    #@3a6
    const-wide/16 v2, 0x60fa

    #@3a8
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@3ab
    const-string/jumbo v2, "xalanservlet.jar from xalan-j_2_3_1 or xalan-j_2_4_1"

    #@3ae
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b1
    .line 1265
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@3b3
    new-instance v1, Ljava/lang/Long;

    #@3b5
    const-wide/16 v2, 0x60ff

    #@3b7
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@3ba
    const-string/jumbo v2, "xalanservlet.jar from xalan-j_2_4_1"

    #@3bd
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c0
    .line 1269
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@3c2
    new-instance v1, Ljava/lang/Long;

    #@3c4
    const-wide/16 v2, 0x15f2

    #@3c6
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@3c9
    const-string/jumbo v2, "jaxp.jar from jaxp1.0.1"

    #@3cc
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3cf
    .line 1270
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@3d1
    new-instance v1, Ljava/lang/Long;

    #@3d3
    const-wide/32 v2, 0x213c5

    #@3d6
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@3d9
    const-string/jumbo v2, "parser.jar from jaxp1.0.1"

    #@3dc
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3df
    .line 1271
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@3e1
    new-instance v1, Ljava/lang/Long;

    #@3e3
    const-wide/16 v2, 0x6ef4

    #@3e5
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@3e8
    const-string/jumbo v2, "jaxp.jar from jaxp-1.1"

    #@3eb
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3ee
    .line 1272
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@3f0
    new-instance v1, Ljava/lang/Long;

    #@3f2
    const-wide/32 v2, 0x2db1a

    #@3f5
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@3f8
    const-string/jumbo v2, "crimson.jar from jaxp-1.1"

    #@3fb
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3fe
    .line 1273
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@400
    new-instance v1, Ljava/lang/Long;

    #@402
    const-wide/32 v2, 0xc3bb2

    #@405
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@408
    const-string/jumbo v2, "xalan.jar from jaxp-1.1"

    #@40b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40e
    .line 1274
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@410
    new-instance v1, Ljava/lang/Long;

    #@412
    const-wide/32 v2, 0x2ff2f

    #@415
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@418
    const-string/jumbo v2, "crimson.jar from crimson-1.1.1"

    #@41b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41e
    .line 1275
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@420
    new-instance v1, Ljava/lang/Long;

    #@422
    const-wide/32 v2, 0x822b

    #@425
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@428
    const-string/jumbo v2, "jaxp.jar from crimson-1.1.1 or jakarta-ant-1.4.1b1"

    #@42b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42e
    .line 1276
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@430
    new-instance v1, Ljava/lang/Long;

    #@432
    const-wide/32 v2, 0x2548d

    #@435
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@438
    const-string/jumbo v2, "crimson.jar from crimson-1.1.2beta2"

    #@43b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43e
    .line 1277
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@440
    new-instance v1, Ljava/lang/Long;

    #@442
    const-wide/32 v2, 0x1584f

    #@445
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@448
    const-string/jumbo v2, "xml-apis.jar from crimson-1.1.2beta2"

    #@44b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44e
    .line 1278
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@450
    new-instance v1, Ljava/lang/Long;

    #@452
    const-wide/32 v2, 0x32630

    #@455
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@458
    const-string/jumbo v2, "crimson.jar from crimson-1.1.3 or jakarta-ant-1.4.1b1"

    #@45b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45e
    .line 1281
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@460
    new-instance v1, Ljava/lang/Long;

    #@462
    const-wide/32 v2, 0x21406

    #@465
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@468
    const-string/jumbo v2, "parser.jar from jakarta-ant-1.3 or 1.2"

    #@46b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46e
    .line 1282
    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@470
    new-instance v1, Ljava/lang/Long;

    #@472
    const-wide/16 v2, 0x15a1

    #@474
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@477
    const-string/jumbo v2, "jaxp.jar from jakarta-ant-1.3 or 1.2"

    #@47a
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47d
    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 327
    const/16 v0, 0x11

    #@6
    new-array v0, v0, [Ljava/lang/String;

    #@8
    .line 328
    const-string/jumbo v1, "xalan.jar"

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, v0, v2

    #@e
    const-string/jumbo v1, "xalansamples.jar"

    #@11
    aput-object v1, v0, v3

    #@13
    const-string/jumbo v1, "xalanj1compat.jar"

    #@16
    const/4 v2, 0x2

    #@17
    aput-object v1, v0, v2

    #@19
    const-string/jumbo v1, "xalanservlet.jar"

    #@1c
    const/4 v2, 0x3

    #@1d
    aput-object v1, v0, v2

    #@1f
    .line 329
    const-string/jumbo v1, "serializer.jar"

    #@22
    const/4 v2, 0x4

    #@23
    aput-object v1, v0, v2

    #@25
    .line 330
    const-string/jumbo v1, "xerces.jar"

    #@28
    const/4 v2, 0x5

    #@29
    aput-object v1, v0, v2

    #@2b
    .line 331
    const-string/jumbo v1, "xercesImpl.jar"

    #@2e
    const/4 v2, 0x6

    #@2f
    aput-object v1, v0, v2

    #@31
    .line 332
    const-string/jumbo v1, "testxsl.jar"

    #@34
    const/4 v2, 0x7

    #@35
    aput-object v1, v0, v2

    #@37
    .line 333
    const-string/jumbo v1, "crimson.jar"

    #@3a
    const/16 v2, 0x8

    #@3c
    aput-object v1, v0, v2

    #@3e
    .line 334
    const-string/jumbo v1, "lotusxsl.jar"

    #@41
    const/16 v2, 0x9

    #@43
    aput-object v1, v0, v2

    #@45
    .line 335
    const-string/jumbo v1, "jaxp.jar"

    #@48
    const/16 v2, 0xa

    #@4a
    aput-object v1, v0, v2

    #@4c
    const-string/jumbo v1, "parser.jar"

    #@4f
    const/16 v2, 0xb

    #@51
    aput-object v1, v0, v2

    #@53
    const-string/jumbo v1, "dom.jar"

    #@56
    const/16 v2, 0xc

    #@58
    aput-object v1, v0, v2

    #@5a
    const-string/jumbo v1, "sax.jar"

    #@5d
    const/16 v2, 0xd

    #@5f
    aput-object v1, v0, v2

    #@61
    const-string/jumbo v1, "xml.jar"

    #@64
    const/16 v2, 0xe

    #@66
    aput-object v1, v0, v2

    #@68
    .line 336
    const-string/jumbo v1, "xml-apis.jar"

    #@6b
    const/16 v2, 0xf

    #@6d
    aput-object v1, v0, v2

    #@6f
    .line 337
    const-string/jumbo v1, "xsltc.jar"

    #@72
    const/16 v2, 0x10

    #@74
    aput-object v1, v0, v2

    #@76
    .line 326
    iput-object v0, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    #@78
    .line 1286
    new-instance v0, Ljava/io/PrintWriter;

    #@7a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7c
    invoke-direct {v0, v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    #@7f
    iput-object v0, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    #@81
    .line 92
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 104
    new-instance v3, Ljava/io/PrintWriter;

    #@3
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5
    invoke-direct {v3, v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    #@8
    .line 107
    .local v3, "sendOutputTo":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    array-length v5, p0

    #@a
    if-ge v2, v5, :cond_2

    #@c
    .line 109
    const-string/jumbo v5, "-out"

    #@f
    aget-object v6, p0, v2

    #@11
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    .line 111
    add-int/lit8 v2, v2, 0x1

    #@19
    .line 113
    array-length v5, p0

    #@1a
    if-ge v2, v5, :cond_1

    #@1c
    .line 117
    :try_start_0
    new-instance v4, Ljava/io/PrintWriter;

    #@1e
    new-instance v5, Ljava/io/FileWriter;

    #@20
    aget-object v6, p0, v2

    #@22
    const/4 v7, 0x1

    #@23
    invoke-direct {v5, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    #@26
    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .end local v3    # "sendOutputTo":Ljava/io/PrintWriter;
    .local v4, "sendOutputTo":Ljava/io/PrintWriter;
    move-object v3, v4

    #@2a
    .line 107
    .end local v4    # "sendOutputTo":Ljava/io/PrintWriter;
    .restart local v3    # "sendOutputTo":Ljava/io/PrintWriter;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 120
    :catch_0
    move-exception v1

    #@2e
    .line 121
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@30
    new-instance v6, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v7, "# WARNING: -out "

    #@38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    aget-object v7, p0, v2

    #@3e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    const-string/jumbo v7, " threw "

    #@45
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    .line 122
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@4c
    move-result-object v7

    #@4d
    .line 121
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@58
    goto :goto_1

    #@59
    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5b
    .line 128
    const-string/jumbo v6, "# WARNING: -out argument should have a filename, output sent to console"

    #@5e
    .line 127
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@61
    goto :goto_1

    #@62
    .line 133
    :cond_2
    new-instance v0, Lorg/apache/xalan/xslt/EnvironmentCheck;

    #@64
    invoke-direct {v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;-><init>()V

    #@67
    .line 134
    .local v0, "app":Lorg/apache/xalan/xslt/EnvironmentCheck;
    invoke-virtual {v0, v3}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkEnvironment(Ljava/io/PrintWriter;)Z

    #@6a
    .line 101
    return-void
.end method


# virtual methods
.method public appendEnvironmentReport(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Ljava/util/Hashtable;)V
    .locals 15
    .param p1, "container"    # Lorg/w3c/dom/Node;
    .param p2, "factory"    # Lorg/w3c/dom/Document;
    .param p3, "h"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 411
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 413
    :cond_0
    return-void

    #@5
    .line 418
    :cond_1
    :try_start_0
    const-string/jumbo v12, "EnvironmentCheck"

    #@8
    move-object/from16 v0, p2

    #@a
    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@d
    move-result-object v3

    #@e
    .line 419
    .local v3, "envCheckNode":Lorg/w3c/dom/Element;
    const-string/jumbo v12, "version"

    #@11
    const-string/jumbo v13, "$Revision: 468646 $"

    #@14
    invoke-interface {v3, v12, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 420
    move-object/from16 v0, p1

    #@19
    invoke-interface {v0, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@1c
    .line 422
    if-nez p3, :cond_2

    #@1e
    .line 424
    const-string/jumbo v12, "status"

    #@21
    move-object/from16 v0, p2

    #@23
    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@26
    move-result-object v10

    #@27
    .line 425
    .local v10, "statusNode":Lorg/w3c/dom/Element;
    const-string/jumbo v12, "result"

    #@2a
    const-string/jumbo v13, "ERROR"

    #@2d
    invoke-interface {v10, v12, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@30
    .line 426
    const-string/jumbo v12, "appendEnvironmentReport called with null Hashtable!"

    #@33
    move-object/from16 v0, p2

    #@35
    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    #@38
    move-result-object v12

    #@39
    invoke-interface {v10, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@3c
    .line 427
    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@3f
    .line 428
    return-void

    #@40
    .line 431
    .end local v10    # "statusNode":Lorg/w3c/dom/Element;
    :cond_2
    const/4 v4, 0x0

    #@41
    .line 433
    .local v4, "errors":Z
    const-string/jumbo v12, "environment"

    #@44
    move-object/from16 v0, p2

    #@46
    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@49
    move-result-object v5

    #@4a
    .line 434
    .local v5, "hashNode":Lorg/w3c/dom/Element;
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@4d
    .line 436
    invoke-virtual/range {p3 .. p3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@50
    move-result-object v8

    #@51
    .line 437
    .end local v4    # "errors":Z
    .local v8, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@54
    move-result v12

    #@55
    .line 436
    if-eqz v12, :cond_5

    #@57
    .line 441
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@5a
    move-result-object v6

    #@5b
    .line 442
    .local v6, "key":Ljava/lang/Object;
    move-object v0, v6

    #@5c
    check-cast v0, Ljava/lang/String;

    #@5e
    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@5f
    .line 446
    .local v7, "keyStr":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v12, "foundclasses."

    #@62
    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@65
    move-result v12

    #@66
    if-eqz v12, :cond_3

    #@68
    .line 448
    move-object/from16 v0, p3

    #@6a
    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    move-result-object v11

    #@6e
    check-cast v11, Ljava/util/Vector;

    #@70
    .line 450
    .local v11, "v":Ljava/util/Vector;
    move-object/from16 v0, p2

    #@72
    invoke-virtual {p0, v5, v0, v11, v7}, Lorg/apache/xalan/xslt/EnvironmentCheck;->appendFoundJars(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Ljava/util/Vector;Ljava/lang/String;)Z

    #@75
    move-result v12

    #@76
    or-int/2addr v4, v12

    #@77
    .local v4, "errors":Z
    goto :goto_0

    #@78
    .line 459
    .end local v4    # "errors":Z
    .end local v11    # "v":Ljava/util/Vector;
    :cond_3
    const-string/jumbo v12, "ERROR."

    #@7b
    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7e
    move-result v12

    #@7f
    if-eqz v12, :cond_4

    #@81
    .line 461
    const/4 v4, 0x1

    #@82
    .line 463
    :cond_4
    const-string/jumbo v12, "item"

    #@85
    move-object/from16 v0, p2

    #@87
    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@8a
    move-result-object v9

    #@8b
    .line 464
    .local v9, "node":Lorg/w3c/dom/Element;
    const-string/jumbo v12, "key"

    #@8e
    invoke-interface {v9, v12, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@91
    .line 465
    move-object/from16 v0, p3

    #@93
    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@96
    move-result-object v12

    #@97
    check-cast v12, Ljava/lang/String;

    #@99
    move-object/from16 v0, p2

    #@9b
    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    #@9e
    move-result-object v12

    #@9f
    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@a2
    .line 466
    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@a5
    goto :goto_0

    #@a6
    .line 470
    .end local v9    # "node":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v1

    #@a7
    .line 471
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    #@a8
    .line 472
    .local v4, "errors":Z
    :try_start_2
    const-string/jumbo v12, "item"

    #@ab
    move-object/from16 v0, p2

    #@ad
    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@b0
    move-result-object v9

    #@b1
    .line 473
    .restart local v9    # "node":Lorg/w3c/dom/Element;
    const-string/jumbo v12, "key"

    #@b4
    invoke-interface {v9, v12, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@b7
    .line 474
    new-instance v12, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v13, "ERROR. Reading "

    #@bf
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v12

    #@c3
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v12

    #@c7
    const-string/jumbo v13, " threw: "

    #@ca
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v12

    #@ce
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@d1
    move-result-object v13

    #@d2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v12

    #@d6
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v12

    #@da
    move-object/from16 v0, p2

    #@dc
    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    #@df
    move-result-object v12

    #@e0
    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@e3
    .line 475
    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@e6
    goto/16 :goto_0

    #@e8
    .line 484
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "envCheckNode":Lorg/w3c/dom/Element;
    .end local v4    # "errors":Z
    .end local v5    # "hashNode":Lorg/w3c/dom/Element;
    .end local v6    # "key":Ljava/lang/Object;
    .end local v7    # "keyStr":Ljava/lang/String;
    .end local v8    # "keys":Ljava/util/Enumeration;
    .end local v9    # "node":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v2

    #@e9
    .line 485
    .local v2, "e2":Ljava/lang/Exception;
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@eb
    new-instance v13, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v14, "appendEnvironmentReport threw: "

    #@f3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v13

    #@f7
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@fa
    move-result-object v14

    #@fb
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v13

    #@ff
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v13

    #@103
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@106
    .line 486
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    #@109
    .line 409
    .end local v2    # "e2":Ljava/lang/Exception;
    :goto_1
    return-void

    #@10a
    .line 479
    .restart local v3    # "envCheckNode":Lorg/w3c/dom/Element;
    .restart local v5    # "hashNode":Lorg/w3c/dom/Element;
    .restart local v8    # "keys":Ljava/util/Enumeration;
    :cond_5
    :try_start_3
    const-string/jumbo v12, "status"

    #@10d
    move-object/from16 v0, p2

    #@10f
    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@112
    move-result-object v10

    #@113
    .line 480
    .restart local v10    # "statusNode":Lorg/w3c/dom/Element;
    const-string/jumbo v13, "result"

    #@116
    if-eqz v4, :cond_6

    #@118
    const-string/jumbo v12, "ERROR"

    #@11b
    :goto_2
    invoke-interface {v10, v13, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@11e
    .line 481
    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@121
    goto :goto_1

    #@122
    .line 480
    :cond_6
    const-string/jumbo v12, "OK"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@125
    goto :goto_2
.end method

.method protected appendFoundJars(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Ljava/util/Vector;Ljava/lang/String;)Z
    .locals 12
    .param p1, "container"    # Lorg/w3c/dom/Node;
    .param p2, "factory"    # Lorg/w3c/dom/Document;
    .param p3, "v"    # Ljava/util/Vector;
    .param p4, "desc"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 509
    if-eqz p3, :cond_0

    #@3
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    #@6
    move-result v9

    #@7
    const/4 v10, 0x1

    #@8
    if-ge v9, v10, :cond_1

    #@a
    .line 510
    :cond_0
    return v11

    #@b
    .line 512
    :cond_1
    const/4 v2, 0x0

    #@c
    .line 514
    .local v2, "errors":Z
    const/4 v3, 0x0

    #@d
    .local v3, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    #@10
    move-result v9

    #@11
    if-ge v3, v9, :cond_4

    #@13
    .line 516
    invoke-virtual {p3, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@16
    move-result-object v8

    #@17
    check-cast v8, Ljava/util/Hashtable;

    #@19
    .line 518
    .local v8, "subhash":Ljava/util/Hashtable;
    invoke-virtual {v8}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@1c
    move-result-object v6

    #@1d
    .line 519
    .local v6, "keys":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@20
    move-result v9

    #@21
    .line 518
    if-eqz v9, :cond_3

    #@23
    .line 523
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    .line 526
    .local v4, "key":Ljava/lang/Object;
    :try_start_0
    move-object v0, v4

    #@28
    check-cast v0, Ljava/lang/String;

    #@2a
    move-object v5, v0

    #@2b
    .line 527
    .local v5, "keyStr":Ljava/lang/String;
    const-string/jumbo v9, "ERROR."

    #@2e
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@31
    move-result v9

    #@32
    if-eqz v9, :cond_2

    #@34
    .line 529
    const/4 v2, 0x1

    #@35
    .line 531
    :cond_2
    const-string/jumbo v9, "foundJar"

    #@38
    invoke-interface {p2, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@3b
    move-result-object v7

    #@3c
    .line 532
    .local v7, "node":Lorg/w3c/dom/Element;
    const-string/jumbo v9, "name"

    #@3f
    const-string/jumbo v10, "-"

    #@42
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@45
    move-result v10

    #@46
    const/4 v11, 0x0

    #@47
    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4a
    move-result-object v10

    #@4b
    invoke-interface {v7, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@4e
    .line 533
    const-string/jumbo v9, "desc"

    #@51
    const-string/jumbo v10, "-"

    #@54
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@57
    move-result v10

    #@58
    add-int/lit8 v10, v10, 0x1

    #@5a
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    invoke-interface {v7, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@61
    .line 534
    invoke-virtual {v8, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    move-result-object v9

    #@65
    check-cast v9, Ljava/lang/String;

    #@67
    invoke-interface {p2, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    #@6a
    move-result-object v9

    #@6b
    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@6e
    .line 535
    invoke-interface {p1, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@71
    goto :goto_1

    #@72
    .line 538
    .end local v5    # "keyStr":Ljava/lang/String;
    .end local v7    # "node":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v1

    #@73
    .line 539
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    #@74
    .line 540
    const-string/jumbo v9, "foundJar"

    #@77
    invoke-interface {p2, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@7a
    move-result-object v7

    #@7b
    .line 541
    .restart local v7    # "node":Lorg/w3c/dom/Element;
    new-instance v9, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v10, "ERROR. Reading "

    #@83
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v9

    #@87
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v9

    #@8b
    const-string/jumbo v10, " threw: "

    #@8e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v9

    #@92
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@95
    move-result-object v10

    #@96
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v9

    #@9a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v9

    #@9e
    invoke-interface {p2, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    #@a1
    move-result-object v9

    #@a2
    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@a5
    .line 542
    invoke-interface {p1, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@a8
    goto/16 :goto_1

    #@aa
    .line 514
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "key":Ljava/lang/Object;
    .end local v7    # "node":Lorg/w3c/dom/Element;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@ac
    goto/16 :goto_0

    #@ae
    .line 546
    .end local v6    # "keys":Ljava/util/Enumeration;
    .end local v8    # "subhash":Ljava/util/Hashtable;
    :cond_4
    return v2
.end method

.method protected checkAntVersion(Ljava/util/Hashtable;)V
    .locals 10
    .param p1, "h"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 987
    if-nez p1, :cond_0

    #@2
    .line 988
    new-instance p1, Ljava/util/Hashtable;

    #@4
    .end local p1    # "h":Ljava/util/Hashtable;
    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    #@7
    .line 992
    .restart local p1    # "h":Ljava/util/Hashtable;
    :cond_0
    :try_start_0
    const-string/jumbo v0, "org.apache.tools.ant.Main"

    #@a
    .line 993
    .local v0, "ANT_VERSION_CLASS":Ljava/lang/String;
    const-string/jumbo v1, "getAntVersion"

    #@d
    .line 994
    .local v1, "ANT_VERSION_METHOD":Ljava/lang/String;
    const/4 v7, 0x0

    #@e
    new-array v5, v7, [Ljava/lang/Class;

    #@10
    .line 997
    .local v5, "noArgs":[Ljava/lang/Class;
    const-string/jumbo v7, "org.apache.tools.ant.Main"

    #@13
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@16
    move-result-object v8

    #@17
    const/4 v9, 0x1

    #@18
    .line 996
    invoke-static {v7, v8, v9}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@1b
    move-result-object v2

    #@1c
    .line 999
    .local v2, "clazz":Ljava/lang/Class;
    const-string/jumbo v7, "getAntVersion"

    #@1f
    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@22
    move-result-object v4

    #@23
    .line 1000
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    #@24
    new-array v7, v7, [Ljava/lang/Object;

    #@26
    const/4 v8, 0x0

    #@27
    invoke-virtual {v4, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v6

    #@2b
    .line 1002
    .local v6, "returnValue":Ljava/lang/Object;
    const-string/jumbo v7, "version.ant"

    #@2e
    check-cast v6, Ljava/lang/String;

    #@30
    .end local v6    # "returnValue":Ljava/lang/Object;
    invoke-virtual {p1, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 984
    .end local v0    # "ANT_VERSION_CLASS":Ljava/lang/String;
    .end local v1    # "ANT_VERSION_METHOD":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "noArgs":[Ljava/lang/Class;
    :goto_0
    return-void

    #@34
    .line 1005
    :catch_0
    move-exception v3

    #@35
    .line 1006
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "version.ant"

    #@38
    const-string/jumbo v8, "not-present"

    #@3b
    invoke-virtual {p1, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    goto :goto_0
.end method

.method protected checkDOMVersion(Ljava/util/Hashtable;)V
    .locals 16
    .param p1, "h"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 1022
    if-nez p1, :cond_0

    #@2
    .line 1023
    new-instance p1, Ljava/util/Hashtable;

    #@4
    .end local p1    # "h":Ljava/util/Hashtable;
    invoke-direct/range {p1 .. p1}, Ljava/util/Hashtable;-><init>()V

    #@7
    .line 1025
    .restart local p1    # "h":Ljava/util/Hashtable;
    :cond_0
    const-string/jumbo v5, "org.w3c.dom.Document"

    #@a
    .line 1026
    .local v5, "DOM_LEVEL2_CLASS":Ljava/lang/String;
    const-string/jumbo v6, "createElementNS"

    #@d
    .line 1027
    .local v6, "DOM_LEVEL2_METHOD":Ljava/lang/String;
    const-string/jumbo v3, "org.w3c.dom.Node"

    #@10
    .line 1028
    .local v3, "DOM_LEVEL2WD_CLASS":Ljava/lang/String;
    const-string/jumbo v4, "supported"

    #@13
    .line 1029
    .local v4, "DOM_LEVEL2WD_METHOD":Ljava/lang/String;
    const-string/jumbo v1, "org.w3c.dom.Node"

    #@16
    .line 1030
    .local v1, "DOM_LEVEL2FD_CLASS":Ljava/lang/String;
    const-string/jumbo v2, "isSupported"

    #@19
    .line 1031
    .local v2, "DOM_LEVEL2FD_METHOD":Ljava/lang/String;
    const/4 v13, 0x2

    #@1a
    new-array v12, v13, [Ljava/lang/Class;

    #@1c
    const-class v13, Ljava/lang/String;

    #@1e
    const/4 v14, 0x0

    #@1f
    aput-object v13, v12, v14

    #@21
    .line 1032
    const-class v13, Ljava/lang/String;

    #@23
    const/4 v14, 0x1

    #@24
    aput-object v13, v12, v14

    #@26
    .line 1037
    .local v12, "twoStringArgs":[Ljava/lang/Class;
    :try_start_0
    const-string/jumbo v13, "org.w3c.dom.Document"

    #@29
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@2c
    move-result-object v14

    #@2d
    const/4 v15, 0x1

    #@2e
    .line 1036
    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@31
    move-result-object v7

    #@32
    .line 1039
    .local v7, "clazz":Ljava/lang/Class;
    const-string/jumbo v13, "createElementNS"

    #@35
    invoke-virtual {v7, v13, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@38
    move-result-object v11

    #@39
    .line 1043
    .local v11, "method":Ljava/lang/reflect/Method;
    const-string/jumbo v13, "version.DOM"

    #@3c
    const-string/jumbo v14, "2.0"

    #@3f
    move-object/from16 v0, p1

    #@41
    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    #@44
    .line 1050
    :try_start_1
    const-string/jumbo v13, "org.w3c.dom.Node"

    #@47
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@4a
    move-result-object v14

    #@4b
    const/4 v15, 0x1

    #@4c
    .line 1049
    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@4f
    move-result-object v7

    #@50
    .line 1052
    const-string/jumbo v13, "supported"

    #@53
    invoke-virtual {v7, v13, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@56
    move-result-object v11

    #@57
    .line 1054
    const-string/jumbo v13, "ERROR.version.DOM.draftlevel"

    #@5a
    const-string/jumbo v14, "2.0wd"

    #@5d
    move-object/from16 v0, p1

    #@5f
    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    .line 1055
    const-string/jumbo v13, "ERROR."

    #@65
    const-string/jumbo v14, "At least one error was found!"

    #@68
    move-object/from16 v0, p1

    #@6a
    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@6d
    .line 1019
    .end local v7    # "clazz":Ljava/lang/Class;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    #@6e
    .line 1058
    .restart local v7    # "clazz":Ljava/lang/Class;
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v9

    #@6f
    .line 1063
    .local v9, "e2":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v13, "org.w3c.dom.Node"

    #@72
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@75
    move-result-object v14

    #@76
    const/4 v15, 0x1

    #@77
    .line 1062
    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@7a
    move-result-object v7

    #@7b
    .line 1065
    const-string/jumbo v13, "isSupported"

    #@7e
    invoke-virtual {v7, v13, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@81
    move-result-object v11

    #@82
    .line 1067
    const-string/jumbo v13, "version.DOM.draftlevel"

    #@85
    const-string/jumbo v14, "2.0fd"

    #@88
    move-object/from16 v0, p1

    #@8a
    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@8d
    goto :goto_0

    #@8e
    .line 1070
    :catch_1
    move-exception v10

    #@8f
    .line 1071
    .local v10, "e3":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v13, "ERROR.version.DOM.draftlevel"

    #@92
    const-string/jumbo v14, "2.0unknown"

    #@95
    move-object/from16 v0, p1

    #@97
    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    .line 1072
    const-string/jumbo v13, "ERROR."

    #@9d
    const-string/jumbo v14, "At least one error was found!"

    #@a0
    move-object/from16 v0, p1

    #@a2
    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    #@a5
    goto :goto_0

    #@a6
    .line 1077
    .end local v7    # "clazz":Ljava/lang/Class;
    .end local v9    # "e2":Ljava/lang/Exception;
    .end local v10    # "e3":Ljava/lang/Exception;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v8

    #@a7
    .line 1078
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "ERROR.version.DOM"

    #@aa
    .line 1079
    new-instance v14, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v15, "ERROR attempting to load DOM level 2 class: "

    #@b2
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v14

    #@b6
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@b9
    move-result-object v15

    #@ba
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v14

    #@be
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v14

    #@c2
    .line 1078
    move-object/from16 v0, p1

    #@c4
    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c7
    .line 1080
    const-string/jumbo v13, "ERROR."

    #@ca
    const-string/jumbo v14, "At least one error was found!"

    #@cd
    move-object/from16 v0, p1

    #@cf
    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d2
    goto :goto_0
.end method

.method public checkEnvironment(Ljava/io/PrintWriter;)Z
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 165
    if-eqz p1, :cond_0

    #@2
    .line 166
    iput-object p1, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    #@4
    .line 169
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->getEnvironmentHash()Ljava/util/Hashtable;

    #@7
    move-result-object v1

    #@8
    .line 172
    .local v1, "hash":Ljava/util/Hashtable;
    invoke-virtual {p0, v1}, Lorg/apache/xalan/xslt/EnvironmentCheck;->writeEnvironmentReport(Ljava/util/Hashtable;)Z

    #@b
    move-result v0

    #@c
    .line 174
    .local v0, "environmentHasErrors":Z
    if-eqz v0, :cond_2

    #@e
    .line 178
    const-string/jumbo v2, "# WARNING: Potential problems found in your environment!"

    #@11
    invoke-virtual {p0, v2}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    #@14
    .line 179
    const-string/jumbo v2, "#    Check any \'ERROR\' items above against the Xalan FAQs"

    #@17
    invoke-virtual {p0, v2}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    #@1a
    .line 180
    const-string/jumbo v2, "#    to correct potential problems with your classes/jars"

    #@1d
    invoke-virtual {p0, v2}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    #@20
    .line 181
    const-string/jumbo v2, "#    http://xml.apache.org/xalan-j/faq.html"

    #@23
    invoke-virtual {p0, v2}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    #@26
    .line 182
    iget-object v2, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 183
    iget-object v2, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    #@2c
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    #@2f
    .line 184
    :cond_1
    const/4 v2, 0x0

    #@30
    return v2

    #@31
    .line 188
    :cond_2
    const-string/jumbo v2, "# YAHOO! Your environment seems to be OK."

    #@34
    invoke-virtual {p0, v2}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    #@37
    .line 189
    iget-object v2, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    #@39
    if-eqz v2, :cond_3

    #@3b
    .line 190
    iget-object v2, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    #@3d
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    #@40
    .line 191
    :cond_3
    const/4 v2, 0x1

    #@41
    return v2
.end method

.method protected checkJAXPVersion(Ljava/util/Hashtable;)V
    .locals 9
    .param p1, "h"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 784
    if-nez p1, :cond_0

    #@2
    .line 785
    new-instance p1, Ljava/util/Hashtable;

    #@4
    .end local p1    # "h":Ljava/util/Hashtable;
    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    #@7
    .line 787
    .restart local p1    # "h":Ljava/util/Hashtable;
    :cond_0
    const/4 v6, 0x0

    #@8
    new-array v5, v6, [Ljava/lang/Class;

    #@a
    .line 788
    .local v5, "noArgs":[Ljava/lang/Class;
    const/4 v2, 0x0

    #@b
    .line 792
    .local v2, "clazz":Ljava/lang/Class;
    :try_start_0
    const-string/jumbo v1, "javax.xml.parsers.DocumentBuilder"

    #@e
    .line 793
    .local v1, "JAXP1_CLASS":Ljava/lang/String;
    const-string/jumbo v0, "getDOMImplementation"

    #@11
    .line 796
    .local v0, "JAXP11_METHOD":Ljava/lang/String;
    const-string/jumbo v6, "javax.xml.parsers.DocumentBuilder"

    #@14
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@17
    move-result-object v7

    #@18
    const/4 v8, 0x1

    #@19
    .line 795
    invoke-static {v6, v7, v8}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@1c
    move-result-object v2

    #@1d
    .line 798
    .local v2, "clazz":Ljava/lang/Class;
    const-string/jumbo v6, "getDOMImplementation"

    #@20
    invoke-virtual {v2, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@23
    move-result-object v4

    #@24
    .line 801
    .local v4, "method":Ljava/lang/reflect/Method;
    const-string/jumbo v6, "version.JAXP"

    #@27
    const-string/jumbo v7, "1.1 or higher"

    #@2a
    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 781
    .end local v0    # "JAXP11_METHOD":Ljava/lang/String;
    .end local v1    # "JAXP1_CLASS":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    #@2e
    .line 804
    :catch_0
    move-exception v3

    #@2f
    .line 805
    .local v3, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    #@31
    .line 810
    const-string/jumbo v6, "ERROR.version.JAXP"

    #@34
    const-string/jumbo v7, "1.0.1"

    #@37
    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 811
    const-string/jumbo v6, "ERROR."

    #@3d
    const-string/jumbo v7, "At least one error was found!"

    #@40
    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    goto :goto_0

    #@44
    .line 818
    :cond_1
    const-string/jumbo v6, "ERROR.version.JAXP"

    #@47
    const-string/jumbo v7, "not-present"

    #@4a
    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    .line 819
    const-string/jumbo v6, "ERROR."

    #@50
    const-string/jumbo v7, "At least one error was found!"

    #@53
    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    goto :goto_0
.end method

.method protected checkParserVersion(Ljava/util/Hashtable;)V
    .locals 10
    .param p1, "h"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 923
    if-nez p1, :cond_0

    #@2
    .line 924
    new-instance p1, Ljava/util/Hashtable;

    #@4
    .end local p1    # "h":Ljava/util/Hashtable;
    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    #@7
    .line 928
    .restart local p1    # "h":Ljava/util/Hashtable;
    :cond_0
    :try_start_0
    const-string/jumbo v1, "org.apache.xerces.framework.Version"

    #@a
    .line 931
    .local v1, "XERCES1_VERSION_CLASS":Ljava/lang/String;
    const-string/jumbo v7, "org.apache.xerces.framework.Version"

    #@d
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@10
    move-result-object v8

    #@11
    const/4 v9, 0x1

    #@12
    .line 930
    invoke-static {v7, v8, v9}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@15
    move-result-object v3

    #@16
    .line 934
    .local v3, "clazz":Ljava/lang/Class;
    const-string/jumbo v7, "fVersion"

    #@19
    invoke-virtual {v3, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1c
    move-result-object v5

    #@1d
    .line 935
    .local v5, "f":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    #@1e
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v6

    #@22
    check-cast v6, Ljava/lang/String;

    #@24
    .line 937
    .local v6, "parserVersion":Ljava/lang/String;
    const-string/jumbo v7, "version.xerces1"

    #@27
    invoke-virtual {p1, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 947
    .end local v1    # "XERCES1_VERSION_CLASS":Ljava/lang/String;
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "parserVersion":Ljava/lang/String;
    :goto_0
    :try_start_1
    const-string/jumbo v2, "org.apache.xerces.impl.Version"

    #@2d
    .line 950
    .local v2, "XERCES2_VERSION_CLASS":Ljava/lang/String;
    const-string/jumbo v7, "org.apache.xerces.impl.Version"

    #@30
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@33
    move-result-object v8

    #@34
    const/4 v9, 0x1

    #@35
    .line 949
    invoke-static {v7, v8, v9}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@38
    move-result-object v3

    #@39
    .line 953
    .restart local v3    # "clazz":Ljava/lang/Class;
    const-string/jumbo v7, "fVersion"

    #@3c
    invoke-virtual {v3, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@3f
    move-result-object v5

    #@40
    .line 954
    .restart local v5    # "f":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    #@41
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v6

    #@45
    check-cast v6, Ljava/lang/String;

    #@47
    .line 956
    .restart local v6    # "parserVersion":Ljava/lang/String;
    const-string/jumbo v7, "version.xerces2"

    #@4a
    invoke-virtual {p1, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@4d
    .line 965
    .end local v2    # "XERCES2_VERSION_CLASS":Ljava/lang/String;
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "parserVersion":Ljava/lang/String;
    :goto_1
    :try_start_2
    const-string/jumbo v0, "org.apache.crimson.parser.Parser2"

    #@50
    .line 968
    .local v0, "CRIMSON_CLASS":Ljava/lang/String;
    const-string/jumbo v7, "org.apache.crimson.parser.Parser2"

    #@53
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@56
    move-result-object v8

    #@57
    const/4 v9, 0x1

    #@58
    .line 967
    invoke-static {v7, v8, v9}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@5b
    move-result-object v3

    #@5c
    .line 971
    .restart local v3    # "clazz":Ljava/lang/Class;
    const-string/jumbo v7, "version.crimson"

    #@5f
    const-string/jumbo v8, "present-unknown-version"

    #@62
    invoke-virtual {p1, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@65
    .line 920
    .end local v0    # "CRIMSON_CLASS":Ljava/lang/String;
    .end local v3    # "clazz":Ljava/lang/Class;
    :goto_2
    return-void

    #@66
    .line 940
    :catch_0
    move-exception v4

    #@67
    .line 941
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "version.xerces1"

    #@6a
    const-string/jumbo v8, "not-present"

    #@6d
    invoke-virtual {p1, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    goto :goto_0

    #@71
    .line 959
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    #@72
    .line 960
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "version.xerces2"

    #@75
    const-string/jumbo v8, "not-present"

    #@78
    invoke-virtual {p1, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7b
    goto :goto_1

    #@7c
    .line 974
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    #@7d
    .line 975
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "version.crimson"

    #@80
    const-string/jumbo v8, "not-present"

    #@83
    invoke-virtual {p1, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@86
    goto :goto_2
.end method

.method protected checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;
    .locals 13
    .param p1, "cp"    # Ljava/lang/String;
    .param p2, "jars"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v8, 0x0

    #@2
    .line 659
    if-eqz p1, :cond_0

    #@4
    if-nez p2, :cond_1

    #@6
    .line 661
    :cond_0
    return-object v8

    #@7
    .line 659
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v7

    #@b
    if-eqz v7, :cond_0

    #@d
    .line 660
    array-length v7, p2

    #@e
    if-eqz v7, :cond_0

    #@10
    .line 663
    new-instance v6, Ljava/util/Vector;

    #@12
    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    #@15
    .line 664
    .local v6, "v":Ljava/util/Vector;
    new-instance v5, Ljava/util/StringTokenizer;

    #@17
    sget-object v7, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    #@19
    invoke-direct {v5, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 666
    .local v5, "st":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@1f
    move-result v7

    #@20
    if-eqz v7, :cond_6

    #@22
    .line 670
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 672
    .local v2, "filename":Ljava/lang/String;
    const/4 v4, 0x0

    #@27
    .local v4, "i":I
    :goto_0
    array-length v7, p2

    #@28
    if-ge v4, v7, :cond_2

    #@2a
    .line 674
    aget-object v7, p2, v4

    #@2c
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@2f
    move-result v7

    #@30
    const/4 v8, -0x1

    #@31
    if-le v7, v8, :cond_4

    #@33
    .line 676
    new-instance v1, Ljava/io/File;

    #@35
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@38
    .line 678
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@3b
    move-result v7

    #@3c
    if-eqz v7, :cond_5

    #@3e
    .line 685
    :try_start_0
    new-instance v3, Ljava/util/Hashtable;

    #@40
    const/4 v7, 0x2

    #@41
    invoke-direct {v3, v7}, Ljava/util/Hashtable;-><init>(I)V

    #@44
    .line 687
    .local v3, "h":Ljava/util/Hashtable;
    new-instance v7, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    aget-object v8, p2, v4

    #@4b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    const-string/jumbo v8, "-path"

    #@52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    invoke-virtual {v3, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    .line 694
    const-string/jumbo v7, "xalan.jar"

    #@64
    aget-object v8, p2, v4

    #@66
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@69
    move-result v7

    #@6a
    if-nez v7, :cond_3

    #@6c
    .line 695
    new-instance v7, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    aget-object v8, p2, v4

    #@73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v7

    #@77
    const-string/jumbo v8, "-apparent.version"

    #@7a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v7

    #@7e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v7

    #@82
    .line 696
    aget-object v8, p2, v4

    #@84
    invoke-virtual {v1}, Ljava/io/File;->length()J

    #@87
    move-result-wide v10

    #@88
    invoke-virtual {p0, v8, v10, v11}, Lorg/apache/xalan/xslt/EnvironmentCheck;->getApparentVersion(Ljava/lang/String;J)Ljava/lang/String;

    #@8b
    move-result-object v8

    #@8c
    .line 695
    invoke-virtual {v3, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8f
    .line 698
    :cond_3
    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@92
    .line 672
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "h":Ljava/util/Hashtable;
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@94
    goto :goto_0

    #@95
    .line 708
    .restart local v1    # "f":Ljava/io/File;
    :cond_5
    new-instance v3, Ljava/util/Hashtable;

    #@97
    invoke-direct {v3, v12}, Ljava/util/Hashtable;-><init>(I)V

    #@9a
    .line 710
    .restart local v3    # "h":Ljava/util/Hashtable;
    new-instance v7, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    aget-object v8, p2, v4

    #@a1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v7

    #@a5
    const-string/jumbo v8, "-path"

    #@a8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v7

    #@ac
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v7

    #@b0
    new-instance v8, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v9, "WARNING. Classpath entry: "

    #@b8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v8

    #@bc
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v8

    #@c0
    .line 711
    const-string/jumbo v9, " does not exist"

    #@c3
    .line 710
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v8

    #@c7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v8

    #@cb
    invoke-virtual {v3, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ce
    .line 712
    new-instance v7, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    aget-object v8, p2, v4

    #@d5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v7

    #@d9
    const-string/jumbo v8, "-apparent.version"

    #@dc
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v7

    #@e0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v7

    #@e4
    const-string/jumbo v8, "not-present"

    #@e7
    invoke-virtual {v3, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ea
    .line 713
    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@ed
    goto :goto_1

    #@ee
    .line 719
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "h":Ljava/util/Hashtable;
    .end local v4    # "i":I
    :cond_6
    return-object v6

    #@ef
    .line 701
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v4    # "i":I
    :catch_0
    move-exception v0

    #@f0
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method protected checkProcessorVersion(Ljava/util/Hashtable;)V
    .locals 16
    .param p1, "h"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 834
    if-nez p1, :cond_0

    #@2
    .line 835
    new-instance p1, Ljava/util/Hashtable;

    #@4
    .end local p1    # "h":Ljava/util/Hashtable;
    invoke-direct/range {p1 .. p1}, Ljava/util/Hashtable;-><init>()V

    #@7
    .line 840
    .restart local p1    # "h":Ljava/util/Hashtable;
    :cond_0
    :try_start_0
    const-string/jumbo v1, "org.apache.xalan.xslt.XSLProcessorVersion"

    #@a
    .line 843
    .local v1, "XALAN1_VERSION_CLASS":Ljava/lang/String;
    const-string/jumbo v13, "org.apache.xalan.xslt.XSLProcessorVersion"

    #@d
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@10
    move-result-object v14

    #@11
    const/4 v15, 0x1

    #@12
    .line 842
    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@15
    move-result-object v6

    #@16
    .line 846
    .local v6, "clazz":Ljava/lang/Class;
    new-instance v5, Ljava/lang/StringBuffer;

    #@18
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    #@1b
    .line 847
    .local v5, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v13, "PRODUCT"

    #@1e
    invoke-virtual {v6, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@21
    move-result-object v9

    #@22
    .line 849
    .local v9, "f":Ljava/lang/reflect/Field;
    const/4 v13, 0x0

    #@23
    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v13

    #@27
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@2a
    .line 850
    const/16 v13, 0x3b

    #@2c
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2f
    .line 852
    const-string/jumbo v13, "LANGUAGE"

    #@32
    invoke-virtual {v6, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@35
    move-result-object v9

    #@36
    .line 854
    const/4 v13, 0x0

    #@37
    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v13

    #@3b
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@3e
    .line 855
    const/16 v13, 0x3b

    #@40
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@43
    .line 857
    const-string/jumbo v13, "S_VERSION"

    #@46
    invoke-virtual {v6, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@49
    move-result-object v9

    #@4a
    .line 859
    const/4 v13, 0x0

    #@4b
    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    move-result-object v13

    #@4f
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@52
    .line 860
    const/16 v13, 0x3b

    #@54
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@57
    .line 861
    const-string/jumbo v13, "version.xalan1"

    #@5a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5d
    move-result-object v14

    #@5e
    move-object/from16 v0, p1

    #@60
    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    .line 873
    .end local v1    # "XALAN1_VERSION_CLASS":Ljava/lang/String;
    .end local v5    # "buf":Ljava/lang/StringBuffer;
    .end local v6    # "clazz":Ljava/lang/Class;
    .end local v9    # "f":Ljava/lang/reflect/Field;
    :goto_0
    :try_start_1
    const-string/jumbo v4, "org.apache.xalan.processor.XSLProcessorVersion"

    #@66
    .line 876
    .local v4, "XALAN2_VERSION_CLASS":Ljava/lang/String;
    const-string/jumbo v13, "org.apache.xalan.processor.XSLProcessorVersion"

    #@69
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@6c
    move-result-object v14

    #@6d
    const/4 v15, 0x1

    #@6e
    .line 875
    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@71
    move-result-object v6

    #@72
    .line 879
    .restart local v6    # "clazz":Ljava/lang/Class;
    new-instance v5, Ljava/lang/StringBuffer;

    #@74
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    #@77
    .line 880
    .restart local v5    # "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v13, "S_VERSION"

    #@7a
    invoke-virtual {v6, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@7d
    move-result-object v9

    #@7e
    .line 881
    .restart local v9    # "f":Ljava/lang/reflect/Field;
    const/4 v13, 0x0

    #@7f
    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    move-result-object v13

    #@83
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@86
    .line 883
    const-string/jumbo v13, "version.xalan2x"

    #@89
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@8c
    move-result-object v14

    #@8d
    move-object/from16 v0, p1

    #@8f
    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@92
    .line 893
    .end local v4    # "XALAN2_VERSION_CLASS":Ljava/lang/String;
    .end local v5    # "buf":Ljava/lang/StringBuffer;
    .end local v6    # "clazz":Ljava/lang/Class;
    .end local v9    # "f":Ljava/lang/reflect/Field;
    :goto_1
    :try_start_2
    const-string/jumbo v2, "org.apache.xalan.Version"

    #@95
    .line 894
    .local v2, "XALAN2_2_VERSION_CLASS":Ljava/lang/String;
    const-string/jumbo v3, "getVersion"

    #@98
    .line 895
    .local v3, "XALAN2_2_VERSION_METHOD":Ljava/lang/String;
    const/4 v13, 0x0

    #@99
    new-array v11, v13, [Ljava/lang/Class;

    #@9b
    .line 898
    .local v11, "noArgs":[Ljava/lang/Class;
    const-string/jumbo v13, "org.apache.xalan.Version"

    #@9e
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@a1
    move-result-object v14

    #@a2
    const/4 v15, 0x1

    #@a3
    .line 897
    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@a6
    move-result-object v6

    #@a7
    .line 900
    .restart local v6    # "clazz":Ljava/lang/Class;
    const-string/jumbo v13, "getVersion"

    #@aa
    invoke-virtual {v6, v13, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@ad
    move-result-object v10

    #@ae
    .line 901
    .local v10, "method":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    #@af
    new-array v13, v13, [Ljava/lang/Object;

    #@b1
    const/4 v14, 0x0

    #@b2
    invoke-virtual {v10, v14, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@b5
    move-result-object v12

    #@b6
    .line 903
    .local v12, "returnValue":Ljava/lang/Object;
    const-string/jumbo v13, "version.xalan2_2"

    #@b9
    check-cast v12, Ljava/lang/String;

    #@bb
    .end local v12    # "returnValue":Ljava/lang/Object;
    move-object/from16 v0, p1

    #@bd
    invoke-virtual {v0, v13, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@c0
    .line 831
    .end local v2    # "XALAN2_2_VERSION_CLASS":Ljava/lang/String;
    .end local v3    # "XALAN2_2_VERSION_METHOD":Ljava/lang/String;
    .end local v6    # "clazz":Ljava/lang/Class;
    .end local v10    # "method":Ljava/lang/reflect/Method;
    .end local v11    # "noArgs":[Ljava/lang/Class;
    :goto_2
    return-void

    #@c1
    .line 864
    :catch_0
    move-exception v7

    #@c2
    .line 865
    .local v7, "e1":Ljava/lang/Exception;
    const-string/jumbo v13, "version.xalan1"

    #@c5
    const-string/jumbo v14, "not-present"

    #@c8
    move-object/from16 v0, p1

    #@ca
    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cd
    goto :goto_0

    #@ce
    .line 886
    .end local v7    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    #@cf
    .line 887
    .local v8, "e2":Ljava/lang/Exception;
    const-string/jumbo v13, "version.xalan2x"

    #@d2
    const-string/jumbo v14, "not-present"

    #@d5
    move-object/from16 v0, p1

    #@d7
    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@da
    goto :goto_1

    #@db
    .line 906
    .end local v8    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    #@dc
    .line 907
    .restart local v8    # "e2":Ljava/lang/Exception;
    const-string/jumbo v13, "version.xalan2_2"

    #@df
    const-string/jumbo v14, "not-present"

    #@e2
    move-object/from16 v0, p1

    #@e4
    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e7
    goto :goto_2
.end method

.method protected checkSAXVersion(Ljava/util/Hashtable;)V
    .locals 17
    .param p1, "h"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 1100
    if-nez p1, :cond_0

    #@2
    .line 1101
    new-instance p1, Ljava/util/Hashtable;

    #@4
    .end local p1    # "h":Ljava/util/Hashtable;
    invoke-direct/range {p1 .. p1}, Ljava/util/Hashtable;-><init>()V

    #@7
    .line 1103
    .restart local p1    # "h":Ljava/util/Hashtable;
    :cond_0
    const-string/jumbo v1, "org.xml.sax.Parser"

    #@a
    .line 1104
    .local v1, "SAX_VERSION1_CLASS":Ljava/lang/String;
    const-string/jumbo v2, "parse"

    #@d
    .line 1105
    .local v2, "SAX_VERSION1_METHOD":Ljava/lang/String;
    const-string/jumbo v5, "org.xml.sax.XMLReader"

    #@10
    .line 1106
    .local v5, "SAX_VERSION2_CLASS":Ljava/lang/String;
    const-string/jumbo v6, "parse"

    #@13
    .line 1107
    .local v6, "SAX_VERSION2_METHOD":Ljava/lang/String;
    const-string/jumbo v3, "org.xml.sax.helpers.AttributesImpl"

    #@16
    .line 1108
    .local v3, "SAX_VERSION2BETA_CLASSNF":Ljava/lang/String;
    const-string/jumbo v4, "setAttributes"

    #@19
    .line 1109
    .local v4, "SAX_VERSION2BETA_METHODNF":Ljava/lang/String;
    const/4 v14, 0x1

    #@1a
    new-array v13, v14, [Ljava/lang/Class;

    #@1c
    const-class v14, Ljava/lang/String;

    #@1e
    const/4 v15, 0x0

    #@1f
    aput-object v14, v13, v15

    #@21
    .line 1111
    .local v13, "oneStringArg":[Ljava/lang/Class;
    const/4 v14, 0x1

    #@22
    new-array v7, v14, [Ljava/lang/Class;

    #@24
    const-class v14, Lorg/xml/sax/Attributes;

    #@26
    const/4 v15, 0x0

    #@27
    aput-object v14, v7, v15

    #@29
    .line 1118
    .local v7, "attributesArg":[Ljava/lang/Class;
    :try_start_0
    const-string/jumbo v14, "org.xml.sax.helpers.AttributesImpl"

    #@2c
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@2f
    move-result-object v15

    #@30
    const/16 v16, 0x1

    #@32
    .line 1117
    invoke-static/range {v14 .. v16}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@35
    move-result-object v8

    #@36
    .line 1120
    .local v8, "clazz":Ljava/lang/Class;
    const-string/jumbo v14, "setAttributes"

    #@39
    invoke-virtual {v8, v14, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@3c
    move-result-object v12

    #@3d
    .line 1124
    .local v12, "method":Ljava/lang/reflect/Method;
    const-string/jumbo v14, "version.SAX"

    #@40
    const-string/jumbo v15, "2.0"

    #@43
    move-object/from16 v0, p1

    #@45
    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 1097
    .end local v8    # "clazz":Ljava/lang/Class;
    .end local v12    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    #@49
    .line 1127
    :catch_0
    move-exception v9

    #@4a
    .line 1129
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "ERROR.version.SAX"

    #@4d
    .line 1130
    new-instance v15, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v16, "ERROR attempting to load SAX version 2 class: "

    #@55
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v15

    #@59
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@5c
    move-result-object v16

    #@5d
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v15

    #@61
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v15

    #@65
    .line 1129
    move-object/from16 v0, p1

    #@67
    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    .line 1131
    const-string/jumbo v14, "ERROR."

    #@6d
    const-string/jumbo v15, "At least one error was found!"

    #@70
    move-object/from16 v0, p1

    #@72
    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    .line 1136
    :try_start_1
    const-string/jumbo v14, "org.xml.sax.XMLReader"

    #@78
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@7b
    move-result-object v15

    #@7c
    const/16 v16, 0x1

    #@7e
    .line 1135
    invoke-static/range {v14 .. v16}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@81
    move-result-object v8

    #@82
    .line 1138
    .restart local v8    # "clazz":Ljava/lang/Class;
    const-string/jumbo v14, "parse"

    #@85
    invoke-virtual {v8, v14, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@88
    move-result-object v12

    #@89
    .line 1143
    .restart local v12    # "method":Ljava/lang/reflect/Method;
    const-string/jumbo v14, "version.SAX-backlevel"

    #@8c
    const-string/jumbo v15, "2.0beta2-or-earlier"

    #@8f
    move-object/from16 v0, p1

    #@91
    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@94
    goto :goto_0

    #@95
    .line 1146
    .end local v8    # "clazz":Ljava/lang/Class;
    .end local v12    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v10

    #@96
    .line 1148
    .local v10, "e2":Ljava/lang/Exception;
    const-string/jumbo v14, "ERROR.version.SAX"

    #@99
    .line 1149
    new-instance v15, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v16, "ERROR attempting to load SAX version 2 class: "

    #@a1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v15

    #@a5
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@a8
    move-result-object v16

    #@a9
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v15

    #@ad
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v15

    #@b1
    .line 1148
    move-object/from16 v0, p1

    #@b3
    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b6
    .line 1150
    const-string/jumbo v14, "ERROR."

    #@b9
    const-string/jumbo v15, "At least one error was found!"

    #@bc
    move-object/from16 v0, p1

    #@be
    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c1
    .line 1155
    :try_start_2
    const-string/jumbo v14, "org.xml.sax.Parser"

    #@c4
    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@c7
    move-result-object v15

    #@c8
    const/16 v16, 0x1

    #@ca
    .line 1154
    invoke-static/range {v14 .. v16}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@cd
    move-result-object v8

    #@ce
    .line 1157
    .restart local v8    # "clazz":Ljava/lang/Class;
    const-string/jumbo v14, "parse"

    #@d1
    invoke-virtual {v8, v14, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@d4
    move-result-object v12

    #@d5
    .line 1162
    .restart local v12    # "method":Ljava/lang/reflect/Method;
    const-string/jumbo v14, "version.SAX-backlevel"

    #@d8
    const-string/jumbo v15, "1.0"

    #@db
    move-object/from16 v0, p1

    #@dd
    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@e0
    goto/16 :goto_0

    #@e2
    .line 1165
    .end local v8    # "clazz":Ljava/lang/Class;
    .end local v12    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v11

    #@e3
    .line 1168
    .local v11, "e3":Ljava/lang/Exception;
    const-string/jumbo v14, "ERROR.version.SAX-backlevel"

    #@e6
    .line 1169
    new-instance v15, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v16, "ERROR attempting to load SAX version 1 class: "

    #@ee
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v15

    #@f2
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@f5
    move-result-object v16

    #@f6
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v15

    #@fa
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v15

    #@fe
    .line 1168
    move-object/from16 v0, p1

    #@100
    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@103
    goto/16 :goto_0
.end method

.method protected checkSystemProperties(Ljava/util/Hashtable;)V
    .locals 8
    .param p1, "h"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 565
    if-nez p1, :cond_0

    #@2
    .line 566
    new-instance p1, Ljava/util/Hashtable;

    #@4
    .end local p1    # "h":Ljava/util/Hashtable;
    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    #@7
    .line 571
    .restart local p1    # "h":Ljava/util/Hashtable;
    :cond_0
    :try_start_0
    const-string/jumbo v6, "java.version"

    #@a
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 573
    .local v2, "javaVersion":Ljava/lang/String;
    const-string/jumbo v6, "java.version"

    #@11
    invoke-virtual {p1, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 590
    .end local v2    # "javaVersion":Ljava/lang/String;
    :goto_0
    :try_start_1
    const-string/jumbo v6, "java.class.path"

    #@17
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 592
    .local v1, "cp":Ljava/lang/String;
    const-string/jumbo v6, "java.class.path"

    #@1e
    invoke-virtual {p1, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 594
    iget-object v6, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    #@23
    invoke-virtual {p0, v1, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;

    #@26
    move-result-object v0

    #@27
    .line 596
    .local v0, "classpathJars":Ljava/util/Vector;
    if-eqz v0, :cond_1

    #@29
    .line 597
    const-string/jumbo v6, "foundclasses.java.class.path"

    #@2c
    invoke-virtual {p1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 600
    :cond_1
    const-string/jumbo v6, "sun.boot.class.path"

    #@32
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    .line 602
    .local v3, "othercp":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@38
    .line 604
    const-string/jumbo v6, "sun.boot.class.path"

    #@3b
    invoke-virtual {p1, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    .line 606
    iget-object v6, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    #@40
    invoke-virtual {p0, v3, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;

    #@43
    move-result-object v0

    #@44
    .line 608
    if-eqz v0, :cond_2

    #@46
    .line 609
    const-string/jumbo v6, "foundclasses.sun.boot.class.path"

    #@49
    invoke-virtual {p1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    .line 614
    :cond_2
    const-string/jumbo v6, "java.ext.dirs"

    #@4f
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    .line 616
    if-eqz v3, :cond_3

    #@55
    .line 618
    const-string/jumbo v6, "java.ext.dirs"

    #@58
    invoke-virtual {p1, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 620
    iget-object v6, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    #@5d
    invoke-virtual {p0, v3, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;

    #@60
    move-result-object v0

    #@61
    .line 622
    if-eqz v0, :cond_3

    #@63
    .line 623
    const-string/jumbo v6, "foundclasses.java.ext.dirs"

    #@66
    invoke-virtual {p1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    #@69
    .line 562
    .end local v0    # "classpathJars":Ljava/util/Vector;
    .end local v1    # "cp":Ljava/lang/String;
    .end local v3    # "othercp":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    #@6a
    .line 576
    :catch_0
    move-exception v4

    #@6b
    .line 580
    .local v4, "se":Ljava/lang/SecurityException;
    const-string/jumbo v6, "java.version"

    #@6e
    .line 581
    const-string/jumbo v7, "WARNING: SecurityException thrown accessing system version properties"

    #@71
    .line 579
    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@74
    goto :goto_0

    #@75
    .line 631
    .end local v4    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v5

    #@76
    .line 634
    .local v5, "se2":Ljava/lang/SecurityException;
    const-string/jumbo v6, "java.class.path"

    #@79
    .line 635
    const-string/jumbo v7, "WARNING: SecurityException thrown accessing system classpath properties"

    #@7c
    .line 633
    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7f
    goto :goto_1
.end method

.method protected getApparentVersion(Ljava/lang/String;J)Ljava/lang/String;
    .locals 4
    .param p1, "jarName"    # Ljava/lang/String;
    .param p2, "jarSize"    # J

    #@0
    .prologue
    .line 745
    sget-object v1, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    #@2
    new-instance v2, Ljava/lang/Long;

    #@4
    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    #@7
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/String;

    #@d
    .line 747
    .local v0, "foundSize":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 749
    return-object v0

    #@16
    .line 753
    :cond_0
    const-string/jumbo v1, "xerces.jar"

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_1

    #@1f
    .line 754
    const-string/jumbo v1, "xercesImpl.jar"

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@25
    move-result v1

    #@26
    .line 753
    if-eqz v1, :cond_2

    #@28
    .line 761
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, " "

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    const-string/jumbo v2, "WARNING."

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    const-string/jumbo v2, "present-unknown-version"

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    return-object v1

    #@4b
    .line 767
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    const-string/jumbo v2, " "

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    const-string/jumbo v2, "present-unknown-version"

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    return-object v1
.end method

.method public getEnvironmentHash()Ljava/util/Hashtable;
    .locals 1

    #@0
    .prologue
    .line 218
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    .line 223
    .local v0, "hash":Ljava/util/Hashtable;
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkJAXPVersion(Ljava/util/Hashtable;)V

    #@8
    .line 224
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkProcessorVersion(Ljava/util/Hashtable;)V

    #@b
    .line 225
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkParserVersion(Ljava/util/Hashtable;)V

    #@e
    .line 226
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkAntVersion(Ljava/util/Hashtable;)V

    #@11
    .line 227
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkDOMVersion(Ljava/util/Hashtable;)V

    #@14
    .line 228
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkSAXVersion(Ljava/util/Hashtable;)V

    #@17
    .line 229
    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkSystemProperties(Ljava/util/Hashtable;)V

    #@1a
    .line 231
    return-object v0
.end method

.method protected logFoundJars(Ljava/util/Vector;Ljava/lang/String;)Z
    .locals 9
    .param p1, "v"    # Ljava/util/Vector;
    .param p2, "desc"    # Ljava/lang/String;

    #@0
    .prologue
    .line 356
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@5
    move-result v7

    #@6
    const/4 v8, 0x1

    #@7
    if-ge v7, v8, :cond_1

    #@9
    .line 357
    :cond_0
    const/4 v7, 0x0

    #@a
    return v7

    #@b
    .line 359
    :cond_1
    const/4 v1, 0x0

    #@c
    .line 361
    .local v1, "errors":Z
    new-instance v7, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v8, "#---- BEGIN Listing XML-related jars in: "

    #@14
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v7

    #@18
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    const-string/jumbo v8, " ----"

    #@1f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    invoke-virtual {p0, v7}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    #@2a
    .line 363
    const/4 v2, 0x0

    #@2b
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@2e
    move-result v7

    #@2f
    if-ge v2, v7, :cond_4

    #@31
    .line 365
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@34
    move-result-object v6

    #@35
    check-cast v6, Ljava/util/Hashtable;

    #@37
    .line 367
    .local v6, "subhash":Ljava/util/Hashtable;
    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@3a
    move-result-object v5

    #@3b
    .line 368
    .local v5, "keys":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@3e
    move-result v7

    #@3f
    .line 367
    if-eqz v7, :cond_3

    #@41
    .line 372
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@44
    move-result-object v3

    #@45
    .local v3, "key":Ljava/lang/Object;
    move-object v4, v3

    #@46
    .line 373
    check-cast v4, Ljava/lang/String;

    #@48
    .line 376
    .local v4, "keyStr":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v7, "ERROR."

    #@4b
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4e
    move-result v7

    #@4f
    if-eqz v7, :cond_2

    #@51
    .line 378
    const/4 v1, 0x1

    #@52
    .line 380
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v7

    #@5b
    const-string/jumbo v8, "="

    #@5e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v7

    #@62
    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    move-result-object v8

    #@66
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v7

    #@6a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v7

    #@6e
    invoke-virtual {p0, v7}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@71
    goto :goto_1

    #@72
    .line 384
    :catch_0
    move-exception v0

    #@73
    .line 385
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    #@74
    .line 386
    new-instance v7, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v8, "Reading-"

    #@7c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v7

    #@80
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v7

    #@84
    const-string/jumbo v8, "= threw: "

    #@87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v7

    #@8b
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@8e
    move-result-object v8

    #@8f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v7

    #@93
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v7

    #@97
    invoke-virtual {p0, v7}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    #@9a
    goto :goto_1

    #@9b
    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "keyStr":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@9d
    goto :goto_0

    #@9e
    .line 391
    .end local v5    # "keys":Ljava/util/Enumeration;
    .end local v6    # "subhash":Ljava/util/Hashtable;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v8, "#----- END Listing XML-related jars in: "

    #@a6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v7

    #@aa
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v7

    #@ae
    const-string/jumbo v8, " -----"

    #@b1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v7

    #@b5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v7

    #@b9
    invoke-virtual {p0, v7}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    #@bc
    .line 393
    return v1
.end method

.method protected logMsg(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1294
    iget-object v0, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5
    .line 1292
    return-void
.end method

.method protected writeEnvironmentReport(Ljava/util/Hashtable;)Z
    .locals 8
    .param p1, "h"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 251
    if-nez p1, :cond_0

    #@2
    .line 253
    const-string/jumbo v6, "# ERROR: writeEnvironmentReport called with null Hashtable"

    #@5
    invoke-virtual {p0, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    #@8
    .line 254
    const/4 v6, 0x0

    #@9
    return v6

    #@a
    .line 257
    :cond_0
    const/4 v1, 0x0

    #@b
    .line 260
    .local v1, "errors":Z
    const-string/jumbo v6, "#---- BEGIN writeEnvironmentReport($Revision: 468646 $): Useful stuff found: ----"

    #@e
    .line 259
    invoke-virtual {p0, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    #@11
    .line 263
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@14
    move-result-object v4

    #@15
    .line 264
    .end local v1    # "errors":Z
    .local v4, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@18
    move-result v6

    #@19
    .line 263
    if-eqz v6, :cond_3

    #@1b
    .line 268
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    .local v2, "key":Ljava/lang/Object;
    move-object v3, v2

    #@20
    .line 269
    check-cast v3, Ljava/lang/String;

    #@22
    .line 273
    .local v3, "keyStr":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "foundclasses."

    #@25
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_1

    #@2b
    .line 275
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v5

    #@2f
    check-cast v5, Ljava/util/Vector;

    #@31
    .line 276
    .local v5, "v":Ljava/util/Vector;
    invoke-virtual {p0, v5, v3}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logFoundJars(Ljava/util/Vector;Ljava/lang/String;)Z

    #@34
    move-result v6

    #@35
    or-int/2addr v1, v6

    #@36
    .local v1, "errors":Z
    goto :goto_0

    #@37
    .line 285
    .end local v1    # "errors":Z
    .end local v5    # "v":Ljava/util/Vector;
    :cond_1
    const-string/jumbo v6, "ERROR."

    #@3a
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3d
    move-result v6

    #@3e
    if-eqz v6, :cond_2

    #@40
    .line 287
    const/4 v1, 0x1

    #@41
    .line 289
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    const-string/jumbo v7, "="

    #@4d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {p0, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    goto :goto_0

    #@61
    .line 293
    :catch_0
    move-exception v0

    #@62
    .line 294
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v7, "Reading-"

    #@6a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v6

    #@72
    const-string/jumbo v7, "= threw: "

    #@75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v6

    #@79
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@7c
    move-result-object v7

    #@7d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v6

    #@81
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v6

    #@85
    invoke-virtual {p0, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    #@88
    goto :goto_0

    #@89
    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "keyStr":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "#----- END writeEnvironmentReport: Useful properties found: -----"

    #@8c
    .line 298
    invoke-virtual {p0, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    #@8f
    .line 301
    return v1
.end method
