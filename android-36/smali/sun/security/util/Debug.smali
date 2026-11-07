.class public Lsun/security/util/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field private static greylist-max-o args:Ljava/lang/String;

.field private static final greylist-max-o hexDigits:[C


# instance fields
.field private greylist-max-o prefix:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 332
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lsun/security/util/Debug;->hexDigits:[C

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist Help()V
    .registers 3

    .line 76
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 77
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "all           turn on all debugging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "access        print all checkPermission results"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "certpath      PKIX CertPathBuilder and"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              CertPathValidator debugging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "combiner      SubjectDomainCombiner debugging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "gssloginconfig"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              GSS LoginConfigImpl debugging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "configfile    JAAS ConfigFile loading"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "configparser  JAAS ConfigFile parsing"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "jar           jar verification"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "logincontext  login context results"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "jca           JCA engine class debugging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "keystore      KeyStore debugging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "policy        loading and granting"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "provider      security provider debugging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pkcs11        PKCS11 session manager debugging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pkcs11keystore"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              PKCS11 KeyStore debugging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pkcs12        PKCS12 KeyStore debugging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "sunpkcs11     SunPKCS11 provider debugging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "scl           permissions SecureClassLoader assigns"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "securerandom  SecureRandom"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ts            timestamping"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 101
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The following can be used with access:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 103
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "stack         include stack trace"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "domain        dump all domains in context"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "failure       before throwing exception, dump stack"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              and domain that didn\'t have permission"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 108
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The following can be used with stack and domain:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 110
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "permission=<classname>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              only dump output if specified permission"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              is being checked"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "codebase=<URL>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "              only dump output if specified codebase"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 117
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The following can be used with provider:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 119
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "engine=<engines>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              only dump output for the specified list"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              of JCA engines. Supported values:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              Cipher, KeyAgreement, KeyGenerator,"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              KeyPairGenerator, KeyStore, Mac,"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              MessageDigest, SecureRandom, Signature."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 126
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The following can be used with certpath:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 128
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ocsp          dump the OCSP protocol exchanges"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "verbose       verbose debugging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 131
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Note: Separate multiple options with a comma"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 133
    return-void
.end method

.method public static greylist getInstance(Ljava/lang/String;)Lsun/security/util/Debug;
    .registers 2
    .param p0, "option"    # Ljava/lang/String;

    .line 143
    invoke-static {p0, p0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;
    .registers 3
    .param p0, "option"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 152
    invoke-static {p0}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 153
    new-instance v0, Lsun/security/util/Debug;

    invoke-direct {v0}, Lsun/security/util/Debug;-><init>()V

    .line 154
    .local v0, "d":Lsun/security/util/Debug;
    iput-object p1, v0, Lsun/security/util/Debug;->prefix:Ljava/lang/String;

    .line 155
    return-object v0

    .line 157
    .end local v0    # "d":Lsun/security/util/Debug;
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist isOn(Ljava/lang/String;)Z
    .registers 5
    .param p0, "option"    # Ljava/lang/String;

    .line 167
    sget-object v0, Lsun/security/util/Debug;->args:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 168
    return v1

    .line 170
    :cond_6
    sget-object v0, Lsun/security/util/Debug;->args:Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_13

    .line 171
    return v2

    .line 173
    :cond_13
    sget-object v0, Lsun/security/util/Debug;->args:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1c

    move v1, v2

    :cond_1c
    return v1
.end method

.method public static blacklist isVerbose()Z
    .registers 1

    .line 181
    const-string v0, "verbose"

    invoke-static {v0}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o marshal(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "args"    # Ljava/lang/String;

    .line 273
    if-eqz p0, :cond_a2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v0, "target":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, "source":Ljava/lang/StringBuffer;
    const-string v2, "[Pp][Ee][Rr][Mm][Ii][Ss][Ss][Ii][Oo][Nn]="

    .line 282
    .local v2, "keyReg":Ljava/lang/String;
    const-string v3, "permission="

    .line 283
    .local v3, "keyStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[a-zA-Z_$][a-zA-Z0-9_$]*([.][a-zA-Z_$][a-zA-Z0-9_$]*)*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "reg":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 286
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 287
    .local v6, "matcher":Ljava/util/regex/Matcher;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 288
    .local v7, "left":Ljava/lang/StringBuffer;
    :goto_30
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    const-string v9, ""

    const-string v10, "  "

    if-eqz v8, :cond_4c

    .line 289
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    .line 290
    .local v8, "matched":Ljava/lang/String;
    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v6, v7, v9}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 295
    .end local v8    # "matched":Ljava/lang/String;
    goto :goto_30

    .line 296
    :cond_4c
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 297
    move-object v1, v7

    .line 306
    const-string v2, "[Cc][Oo][Dd][Ee][Bb][Aa][Ss][Ee]="

    .line 307
    const-string v3, "codebase="

    .line 308
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "[^, ;]*"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 309
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 310
    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 311
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 312
    .end local v7    # "left":Ljava/lang/StringBuffer;
    .local v8, "left":Ljava/lang/StringBuffer;
    :goto_74
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 313
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    .line 314
    .local v7, "matched":Ljava/lang/String;
    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v6, v8, v9}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 319
    .end local v7    # "matched":Ljava/lang/String;
    goto :goto_74

    .line 320
    :cond_8c
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 321
    move-object v1, v8

    .line 324
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 329
    .end local v0    # "target":Ljava/lang/StringBuilder;
    .end local v1    # "source":Ljava/lang/StringBuffer;
    .end local v2    # "keyReg":Ljava/lang/String;
    .end local v3    # "keyStr":Ljava/lang/String;
    .end local v4    # "reg":Ljava/lang/String;
    .end local v5    # "pattern":Ljava/util/regex/Pattern;
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    .end local v8    # "left":Ljava/lang/StringBuffer;
    :cond_a2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist toHexString(Ljava/math/BigInteger;)Ljava/lang/String;
    .registers 5
    .param p0, "b"    # Ljava/math/BigInteger;

    .line 240
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "hexValue":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 243
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 244
    const-string v2, "   -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 247
    :cond_24
    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :goto_29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_44

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_44
    const/4 v2, 0x0

    .line 254
    .local v2, "i":I
    :cond_45
    :goto_45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_70

    .line 256
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    add-int/lit8 v2, v2, 0x2

    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_45

    .line 259
    rem-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_66

    .line 260
    const-string v3, "\n    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 261
    :cond_66
    rem-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_45

    .line 262
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 266
    :cond_70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist toString([B)Ljava/lang/String;
    .registers 6
    .param p0, "b"    # [B

    .line 335
    if-nez p0, :cond_5

    .line 336
    const-string v0, "(null)"

    return-object v0

    .line 338
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 339
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_31

    .line 340
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 341
    .local v2, "k":I
    if-eqz v1, :cond_1c

    .line 342
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    :cond_1c
    sget-object v3, Lsun/security/util/Debug;->hexDigits:[C

    ushr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    sget-object v3, Lsun/security/util/Debug;->hexDigits:[C

    and-int/lit8 v4, v2, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    .end local v2    # "k":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 347
    .end local v1    # "i":I
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getPrintStream()Ljava/io/PrintStream;
    .registers 2

    .line 230
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    return-object v0
.end method

.method public greylist println()V
    .registers 4

    .line 210
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/security/util/Debug;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public blacklist println(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;

    .line 200
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/security/util/Debug;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public greylist println(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 191
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/security/util/Debug;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    return-void
.end method
