.class public Landroid/net/connectivity/org/chromium/base/PiiElider;
.super Ljava/lang/Object;
.source "PiiElider.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist APP_NAMESPACE:[Ljava/lang/String;

.field private static final blacklist CONSOLE_ELISION:Ljava/lang/String; = "[ELIDED:CONSOLE(0)] ELIDED CONSOLE MESSAGE"

.field private static final blacklist CONSOLE_MSG:Ljava/util/regex/Pattern;

.field private static final blacklist DOMAIN_NAME:Ljava/lang/String; = "(([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}\\.)+[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}|((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))"

.field private static final blacklist EMAIL_ELISION:Ljava/lang/String; = "XXX@EMAIL.ELIDED"

.field private static final blacklist GOOD_GTLD_CHAR:Ljava/lang/String; = "a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

.field private static final blacklist GOOD_IRI_CHAR:Ljava/lang/String; = "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

.field private static final blacklist GTLD:Ljava/lang/String; = "[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}"

.field private static final blacklist HOST_NAME:Ljava/lang/String; = "([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}\\.)+[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}"

.field private static final blacklist INTENT:Ljava/lang/String; = "([a-zA-Z][a-zA-Z0-9+.-]+://((([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef;/?:@&=#~.+!*\'(),_-])|(%[a-fA-F0-9]{2}))+))"

.field private static final blacklist INTENT_SCHEME:Ljava/lang/String; = "[a-zA-Z][a-zA-Z0-9+.-]+://"

.field private static final blacklist IP_ADDRESS:Ljava/lang/String; = "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))"

.field private static final blacklist IP_ELISION:Ljava/lang/String; = "1.2.3.4"

.field private static final blacklist IRI:Ljava/lang/String; = "[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}"

.field private static final blacklist MAC_ADDRESS:Ljava/util/regex/Pattern;

.field private static final blacklist MAC_ELISION:Ljava/lang/String; = "01:23:45:67:89:AB"

.field private static final blacklist NOT_URLS_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist PATH_CHAR:Ljava/lang/String; = "(([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef;/?:@&=#~.+!*\'(),_-])|(%[a-fA-F0-9]{2}))"

.field private static final blacklist PATH_COMPONENT:Ljava/lang/String; = "((([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef;/?:@&=#~.+!*\'(),_-])|(%[a-fA-F0-9]{2}))+)"

.field private static final blacklist PORT:Ljava/lang/String; = "(:\\d{1,5})"

.field private static final blacklist SYSTEM_NAMESPACE:[Ljava/lang/String;

.field private static final blacklist URI_CHAR:Ljava/lang/String; = "([a-zA-Z0-9$_.+!*\'(),;?&=-]|(%[a-fA-F0-9]{2}))"

.field private static final blacklist URI_ENCODED_CHAR:Ljava/lang/String; = "(%[a-fA-F0-9]{2})"

.field private static final blacklist URI_SCHEME:Ljava/lang/String; = "((http|https|Http|Https|rtsp|Rtsp)://(([a-zA-Z0-9$_.+!*\'(),;?&=-]|(%[a-fA-F0-9]{2})){1,64}(:([a-zA-Z0-9$_.+!*\'(),;?&=-]|(%[a-fA-F0-9]{2})){1,25})?@)?)"

.field private static final blacklist URL_ELISION:Ljava/lang/String; = "HTTP://WEBADDRESS.ELIDED"

.field private static final blacklist URL_OR_INTENT:Ljava/lang/String; = "((((http|https|Http|Https|rtsp|Rtsp)://(([a-zA-Z0-9$_.+!*\'(),;?&=-]|(%[a-fA-F0-9]{2})){1,64}(:([a-zA-Z0-9$_.+!*\'(),;?&=-]|(%[a-fA-F0-9]{2})){1,25})?@)?)?(([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}\\.)+[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}|((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(:\\d{1,5})?)|([a-zA-Z][a-zA-Z0-9+.-]+://((([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef;/?:@&=#~.+!*\'(),_-])|(%[a-fA-F0-9]{2}))+)))"

.field private static final blacklist URL_WITH_OPTIONAL_SCHEME_AND_PORT:Ljava/lang/String; = "(((http|https|Http|Https|rtsp|Rtsp)://(([a-zA-Z0-9$_.+!*\'(),;?&=-]|(%[a-fA-F0-9]{2})){1,64}(:([a-zA-Z0-9$_.+!*\'(),;?&=-]|(%[a-fA-F0-9]{2})){1,25})?@)?)?(([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}\\.)+[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}|((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(:\\d{1,5})?)"

.field private static final blacklist WEB_URL:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 15

    .line 14
    nop

    .line 67
    nop

    .line 68
    const-string v0, "(\\b|^)(((((http|https|Http|Https|rtsp|Rtsp)://(([a-zA-Z0-9$_.+!*\'(),;?&=-]|(%[a-fA-F0-9]{2})){1,64}(:([a-zA-Z0-9$_.+!*\'(),;?&=-]|(%[a-fA-F0-9]{2})){1,25})?@)?)?(([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}\\.)+[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}|((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(:\\d{1,5})?)|([a-zA-Z][a-zA-Z0-9+.-]+://((([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef;/?:@&=#~.+!*\'(),_-])|(%[a-fA-F0-9]{2}))+))))(/(([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef;/?:@&=#~.+!*\'(),_-])|(%[a-fA-F0-9]{2}))*)?(\\b|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/PiiElider;->WEB_URL:Ljava/util/regex/Pattern;

    .line 78
    nop

    .line 79
    const-string v0, "^(?:Caused by: )?java\\.lang\\.(?:ClassNotFoundException|NoClassDefFoundError):|(?:[\"\' ]/(?:apex|data|mnt|proc|sdcard|storage|system))/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/PiiElider;->NOT_URLS_PATTERN:Ljava/util/regex/Pattern;

    .line 92
    nop

    .line 93
    const-string v0, "([0-9a-fA-F]{2}[-:]+){5}[0-9a-fA-F]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/PiiElider;->MAC_ADDRESS:Ljava/util/regex/Pattern;

    .line 95
    const-string v0, "\\[\\w*:CONSOLE.*\\].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/PiiElider;->CONSOLE_MSG:Ljava/util/regex/Pattern;

    .line 97
    const-string v0, "com.google."

    const-string v1, "com.chrome."

    const-string v2, "org.chromium."

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/PiiElider;->APP_NAMESPACE:[Ljava/lang/String;

    .line 100
    const-string v13, "org.xmlpull."

    const-string v14, "System."

    const-string v1, "android."

    const-string v2, "c2."

    const-string v3, "com.android."

    const-string v4, "dalvik."

    const-string v5, "java."

    const-string v6, "javax."

    const-string v7, "omx."

    const-string v8, "OMX."

    const-string v9, "org.apache."

    const-string v10, "org.json."

    const-string v11, "org.w3c.dom."

    const-string v12, "org.xml."

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/PiiElider;->SYSTEM_NAMESPACE:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist elideConsole(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "original"    # Ljava/lang/String;

    .line 236
    sget-object v0, Landroid/net/connectivity/org/chromium/base/PiiElider;->CONSOLE_MSG:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "[ELIDED:CONSOLE(0)] ELIDED CONSOLE MESSAGE"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist elideEmail(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "original"    # Ljava/lang/String;

    .line 126
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "XXX@EMAIL.ELIDED"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist elideIp(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "original"    # Ljava/lang/String;

    .line 214
    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "1.2.3.4"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist elideMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "original"    # Ljava/lang/String;

    .line 225
    sget-object v0, Landroid/net/connectivity/org/chromium/base/PiiElider;->MAC_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "01:23:45:67:89:AB"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist elideUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "original"    # Ljava/lang/String;

    .line 138
    sget-object v0, Landroid/net/connectivity/org/chromium/base/PiiElider;->NOT_URLS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    .line 139
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "buffer":Ljava/lang/StringBuilder;
    sget-object v1, Landroid/net/connectivity/org/chromium/base/PiiElider;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 141
    .local v1, "matcher":Ljava/util/regex/Matcher;
    const/4 v2, 0x0

    .line 142
    .local v2, "start":I
    :goto_19
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 143
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 144
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 145
    .local v3, "end":I
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/connectivity/org/chromium/base/PiiElider;->likelyToBeAppNamespace(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 147
    invoke-static {v4}, Landroid/net/connectivity/org/chromium/base/PiiElider;->likelyToBeChromeApkName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 148
    invoke-static {v4}, Landroid/net/connectivity/org/chromium/base/PiiElider;->likelyToBeSystemNamespace(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 149
    invoke-static {v4}, Landroid/net/connectivity/org/chromium/base/PiiElider;->likelyToBeClassOrMethodName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 150
    const-string v5, "HTTP://WEBADDRESS.ELIDED"

    invoke-virtual {v0, v2, v3, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v3, v2, v5

    .line 152
    sget-object v5, Landroid/net/connectivity/org/chromium/base/PiiElider;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 154
    :cond_54
    move v2, v3

    .line 155
    .end local v3    # "end":I
    .end local v4    # "url":Ljava/lang/String;
    goto :goto_19

    .line 156
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist isClassName(Ljava/lang/String;)Z
    .registers 3
    .param p0, "url"    # Ljava/lang/String;

    .line 180
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 181
    const/4 v0, 0x1

    return v0

    .line 182
    :catchall_e
    move-exception v1

    .line 185
    return v0
.end method

.method private static blacklist likelyToBeAppNamespace(Ljava/lang/String;)Z
    .registers 7
    .param p0, "url"    # Ljava/lang/String;

    .line 189
    sget-object v0, Landroid/net/connectivity/org/chromium/base/PiiElider;->APP_NAMESPACE:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 190
    .local v4, "ns":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 191
    const/4 v0, 0x1

    return v0

    .line 189
    .end local v4    # "ns":Ljava/lang/String;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 194
    :cond_14
    return v2
.end method

.method private static blacklist likelyToBeChromeApkName(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .line 172
    const-string v0, "chromium-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, ".aab"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 173
    :cond_18
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist likelyToBeClassOrMethodName(Ljava/lang/String;)Z
    .registers 4
    .param p0, "url"    # Ljava/lang/String;

    .line 160
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/PiiElider;->isClassName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 164
    :cond_8
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 165
    .local v0, "indexOfLastPeriod":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_13

    return v2

    .line 166
    :cond_13
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/PiiElider;->isClassName(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static blacklist likelyToBeSystemNamespace(Ljava/lang/String;)Z
    .registers 7
    .param p0, "url"    # Ljava/lang/String;

    .line 198
    sget-object v0, Landroid/net/connectivity/org/chromium/base/PiiElider;->SYSTEM_NAMESPACE:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 199
    .local v4, "ns":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 200
    const/4 v0, 0x1

    return v0

    .line 198
    .end local v4    # "ns":Ljava/lang/String;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 203
    :cond_14
    return v2
.end method

.method public static blacklist sanitizeStacktrace(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "stacktrace"    # Ljava/lang/String;

    .line 247
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 248
    const-string v0, ""

    return-object v0

    .line 250
    :cond_9
    const-string v0, "\\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "lines":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 252
    .local v1, "foundAtLine":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v3, v0

    if-ge v2, v3, :cond_2b

    .line 253
    aget-object v3, v0, v2

    const-string v4, "\tat "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 254
    const/4 v1, 0x1

    goto :goto_28

    .line 256
    :cond_20
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/base/PiiElider;->elideUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 252
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 262
    .end local v2    # "i":I
    :cond_2b
    nop

    .line 263
    const-string v2, "\n"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
