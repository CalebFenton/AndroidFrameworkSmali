.class Ljava/security/Signature$Delegate;
.super Ljava/security/Signature;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Delegate"
.end annotation


# static fields
.field private static final I_PRIV:I = 0x2

.field private static final I_PRIV_SR:I = 0x3

.field private static final I_PUB:I = 0x1

.field private static warnCount:I


# instance fields
.field private final lock:Ljava/lang/Object;

.field private sigSpi:Ljava/security/SignatureSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1085
    const/16 v0, 0xa

    #@2
    sput v0, Ljava/security/Signature$Delegate;->warnCount:I

    #@4
    .line 1018
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1036
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    #@3
    .line 1037
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    #@a
    .line 1035
    return-void
.end method

.method constructor <init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V
    .locals 1
    .param p1, "sigSpi"    # Ljava/security/SignatureSpi;
    .param p2, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1029
    invoke-direct {p0, p2}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    #@3
    .line 1030
    iput-object p1, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@5
    .line 1031
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    #@8
    .line 1028
    return-void
.end method

.method private chooseProvider(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 1143
    iget-object v8, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v8

    #@3
    .line 1144
    :try_start_0
    iget-object v7, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@5
    if-eqz v7, :cond_0

    #@7
    if-nez p2, :cond_0

    #@9
    .line 1145
    iget-object v7, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@b
    invoke-direct {p0, v7, p1, p2, p3}, Ljava/security/Signature$Delegate;->init(Ljava/security/SignatureSpi;ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v8

    #@f
    .line 1146
    return-void

    #@10
    .line 1148
    :cond_0
    const/4 v2, 0x0

    #@11
    .line 1150
    .local v2, "lastException":Ljava/lang/Exception;
    :try_start_1
    invoke-static {p0}, Ljava/security/Signature;->-get0(Ljava/security/Signature;)Ljava/lang/String;

    #@14
    move-result-object v7

    #@15
    const-string/jumbo v9, "NONEwithRSA"

    #@18
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_2

    #@1e
    .line 1151
    invoke-static {}, Ljava/security/Signature;->-get2()Ljava/util/List;

    #@21
    move-result-object v7

    #@22
    invoke-static {v7}, Lsun/security/jca/GetInstance;->getServices(Ljava/util/List;)Ljava/util/List;

    #@25
    move-result-object v3

    #@26
    .line 1156
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :goto_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v5

    #@2a
    .end local v2    # "lastException":Ljava/lang/Exception;
    .local v5, "s$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_4

    #@30
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    check-cast v4, Ljava/security/Provider$Service;

    #@36
    .line 1158
    .local v4, "s":Ljava/security/Provider$Service;
    invoke-virtual {v4, p2}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    #@39
    move-result v7

    #@3a
    if-eqz v7, :cond_1

    #@3c
    .line 1162
    invoke-static {v4}, Ljava/security/Signature;->-wrap0(Ljava/security/Provider$Service;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    move-result v7

    #@40
    if-eqz v7, :cond_1

    #@42
    .line 1166
    :try_start_2
    invoke-static {v4}, Ljava/security/Signature$Delegate;->newInstance(Ljava/security/Provider$Service;)Ljava/security/SignatureSpi;

    #@45
    move-result-object v6

    #@46
    .line 1167
    .local v6, "spi":Ljava/security/SignatureSpi;
    invoke-direct {p0, v6, p1, p2, p3}, Ljava/security/Signature$Delegate;->init(Ljava/security/SignatureSpi;ILjava/security/Key;Ljava/security/SecureRandom;)V

    #@49
    .line 1168
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@4c
    move-result-object v7

    #@4d
    iput-object v7, p0, Ljava/security/Signature$Delegate;->provider:Ljava/security/Provider;

    #@4f
    .line 1169
    iput-object v6, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    monitor-exit v8

    #@52
    .line 1170
    return-void

    #@53
    .line 1153
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .end local v4    # "s":Ljava/security/Provider$Service;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    .end local v6    # "spi":Ljava/security/SignatureSpi;
    .restart local v2    # "lastException":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    const-string/jumbo v7, "Signature"

    #@56
    .line 1154
    invoke-static {p0}, Ljava/security/Signature;->-get0(Ljava/security/Signature;)Ljava/lang/String;

    #@59
    move-result-object v9

    #@5a
    .line 1153
    invoke-static {v7, v9}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@5d
    move-result-object v3

    #@5e
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    goto :goto_0

    #@5f
    .line 1171
    .end local v2    # "lastException":Ljava/lang/Exception;
    .restart local v4    # "s":Ljava/security/Provider$Service;
    .restart local v5    # "s$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@60
    .line 1175
    .local v0, "e":Ljava/lang/Exception;
    if-nez v2, :cond_3

    #@62
    .line 1176
    move-object v2, v0

    #@63
    .line 1178
    :cond_3
    instance-of v7, v2, Ljava/security/InvalidKeyException;

    #@65
    if-eqz v7, :cond_1

    #@67
    .line 1179
    check-cast v2, Ljava/security/InvalidKeyException;

    #@69
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6a
    .line 1143
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .end local v4    # "s":Ljava/security/Provider$Service;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    #@6b
    monitor-exit v8

    #@6c
    throw v7

    #@6d
    .line 1184
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .restart local v5    # "s$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_4
    instance-of v7, v2, Ljava/security/InvalidKeyException;

    #@6f
    if-eqz v7, :cond_5

    #@71
    .line 1185
    check-cast v2, Ljava/security/InvalidKeyException;

    #@73
    throw v2

    #@74
    .line 1187
    :cond_5
    instance-of v7, v2, Ljava/lang/RuntimeException;

    #@76
    if-eqz v7, :cond_6

    #@78
    .line 1188
    check-cast v2, Ljava/lang/RuntimeException;

    #@7a
    throw v2

    #@7b
    .line 1190
    :cond_6
    if-eqz p2, :cond_7

    #@7d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@80
    move-result-object v7

    #@81
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@84
    move-result-object v1

    #@85
    .line 1191
    .local v1, "k":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/security/InvalidKeyException;

    #@87
    .line 1192
    new-instance v9, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v10, "No installed provider supports this key: "

    #@8f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v9

    #@93
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v9

    #@97
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v9

    #@9b
    .line 1191
    invoke-direct {v7, v9, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9e
    throw v7

    #@9f
    .line 1190
    .end local v1    # "k":Ljava/lang/String;
    :cond_7
    const-string/jumbo v1, "(null)"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a2
    .restart local v1    # "k":Ljava/lang/String;
    goto :goto_1
.end method

.method private init(Ljava/security/SignatureSpi;ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "spi"    # Ljava/security/SignatureSpi;
    .param p2, "type"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 1203
    packed-switch p2, :pswitch_data_0

    #@3
    .line 1214
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Internal error: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1c
    throw v0

    #@1d
    .line 1205
    :pswitch_0
    check-cast p3, Ljava/security/PublicKey;

    #@1f
    .end local p3    # "key":Ljava/security/Key;
    invoke-virtual {p1, p3}, Ljava/security/SignatureSpi;->engineInitVerify(Ljava/security/PublicKey;)V

    #@22
    .line 1202
    :goto_0
    return-void

    #@23
    .line 1208
    .restart local p3    # "key":Ljava/security/Key;
    :pswitch_1
    check-cast p3, Ljava/security/PrivateKey;

    #@25
    .end local p3    # "key":Ljava/security/Key;
    invoke-virtual {p1, p3}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    #@28
    goto :goto_0

    #@29
    .line 1211
    .restart local p3    # "key":Ljava/security/Key;
    :pswitch_2
    check-cast p3, Ljava/security/PrivateKey;

    #@2b
    .end local p3    # "key":Ljava/security/Key;
    invoke-virtual {p1, p3, p4}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    #@2e
    goto :goto_0

    #@2f
    .line 1203
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static newInstance(Ljava/security/Provider$Service;)Ljava/security/SignatureSpi;
    .locals 6
    .param p0, "s"    # Ljava/security/Provider$Service;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 1066
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    const-string/jumbo v4, "Cipher"

    #@7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 1069
    :try_start_0
    const-string/jumbo v3, "RSA/ECB/PKCS1Padding"

    #@10
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@13
    move-result-object v4

    #@14
    invoke-static {v3, v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    #@17
    move-result-object v0

    #@18
    .line 1070
    .local v0, "c":Ljavax/crypto/Cipher;
    new-instance v3, Ljava/security/Signature$CipherAdapter;

    #@1a
    invoke-direct {v3, v0}, Ljava/security/Signature$CipherAdapter;-><init>(Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    return-object v3

    #@1e
    .line 1071
    .end local v0    # "c":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    #@1f
    .line 1072
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    #@21
    invoke-direct {v3, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    #@24
    throw v3

    #@25
    .line 1075
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :cond_0
    const/4 v3, 0x0

    #@26
    invoke-virtual {p0, v3}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    .line 1076
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/SignatureSpi;

    #@2c
    if-nez v3, :cond_1

    #@2e
    .line 1077
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    #@30
    .line 1078
    new-instance v4, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v5, "Not a SignatureSpi: "

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    .line 1077
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v3

    #@50
    .line 1080
    :cond_1
    check-cast v2, Ljava/security/SignatureSpi;

    #@52
    .end local v2    # "o":Ljava/lang/Object;
    return-object v2
.end method


# virtual methods
.method chooseFirstProvider()V
    .locals 10

    #@0
    .prologue
    .line 1093
    iget-object v7, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@2
    if-eqz v7, :cond_0

    #@4
    .line 1094
    return-void

    #@5
    .line 1096
    :cond_0
    iget-object v8, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    #@7
    monitor-enter v8

    #@8
    .line 1097
    :try_start_0
    iget-object v7, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-eqz v7, :cond_1

    #@c
    monitor-exit v8

    #@d
    .line 1098
    return-void

    #@e
    .line 1100
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/security/Signature;->-get1()Lsun/security/util/Debug;

    #@11
    move-result-object v7

    #@12
    if-eqz v7, :cond_3

    #@14
    .line 1101
    sget v7, Ljava/security/Signature$Delegate;->warnCount:I

    #@16
    add-int/lit8 v6, v7, -0x1

    #@18
    sput v6, Ljava/security/Signature$Delegate;->warnCount:I

    #@1a
    .line 1102
    .local v6, "w":I
    if-ltz v6, :cond_3

    #@1c
    .line 1103
    invoke-static {}, Ljava/security/Signature;->-get1()Lsun/security/util/Debug;

    #@1f
    move-result-object v7

    #@20
    const-string/jumbo v9, "Signature.init() not first method called, disabling delayed provider selection"

    #@23
    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@26
    .line 1105
    if-nez v6, :cond_2

    #@28
    .line 1106
    invoke-static {}, Ljava/security/Signature;->-get1()Lsun/security/util/Debug;

    #@2b
    move-result-object v7

    #@2c
    const-string/jumbo v9, "Further warnings of this type will be suppressed"

    #@2f
    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@32
    .line 1109
    :cond_2
    new-instance v7, Ljava/lang/Exception;

    #@34
    const-string/jumbo v9, "Call trace"

    #@37
    invoke-direct {v7, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3a
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    #@3d
    .line 1112
    .end local v6    # "w":I
    :cond_3
    const/4 v2, 0x0

    #@3e
    .line 1114
    .local v2, "lastException":Ljava/lang/Exception;
    invoke-static {p0}, Ljava/security/Signature;->-get0(Ljava/security/Signature;)Ljava/lang/String;

    #@41
    move-result-object v7

    #@42
    const-string/jumbo v9, "NONEwithRSA"

    #@45
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@48
    move-result v7

    #@49
    if-eqz v7, :cond_5

    #@4b
    .line 1115
    invoke-static {}, Ljava/security/Signature;->-get2()Ljava/util/List;

    #@4e
    move-result-object v7

    #@4f
    invoke-static {v7}, Lsun/security/jca/GetInstance;->getServices(Ljava/util/List;)Ljava/util/List;

    #@52
    move-result-object v3

    #@53
    .line 1120
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :goto_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@56
    move-result-object v5

    #@57
    .end local v2    # "lastException":Ljava/lang/Exception;
    .local v5, "s$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@5a
    move-result v7

    #@5b
    if-eqz v7, :cond_6

    #@5d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@60
    move-result-object v4

    #@61
    check-cast v4, Ljava/security/Provider$Service;

    #@63
    .line 1121
    .local v4, "s":Ljava/security/Provider$Service;
    invoke-static {v4}, Ljava/security/Signature;->-wrap0(Ljava/security/Provider$Service;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    move-result v7

    #@67
    if-eqz v7, :cond_4

    #@69
    .line 1125
    :try_start_2
    invoke-static {v4}, Ljava/security/Signature$Delegate;->newInstance(Ljava/security/Provider$Service;)Ljava/security/SignatureSpi;

    #@6c
    move-result-object v7

    #@6d
    iput-object v7, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@6f
    .line 1126
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@72
    move-result-object v7

    #@73
    iput-object v7, p0, Ljava/security/Signature$Delegate;->provider:Ljava/security/Provider;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@75
    monitor-exit v8

    #@76
    .line 1127
    return-void

    #@77
    .line 1117
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .end local v4    # "s":Ljava/security/Provider$Service;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    .restart local v2    # "lastException":Ljava/lang/Exception;
    :cond_5
    :try_start_3
    const-string/jumbo v7, "Signature"

    #@7a
    .line 1118
    invoke-static {p0}, Ljava/security/Signature;->-get0(Ljava/security/Signature;)Ljava/lang/String;

    #@7d
    move-result-object v9

    #@7e
    .line 1117
    invoke-static {v7, v9}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@81
    move-result-object v3

    #@82
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    goto :goto_0

    #@83
    .line 1128
    .end local v2    # "lastException":Ljava/lang/Exception;
    .restart local v4    # "s":Ljava/security/Provider$Service;
    .restart local v5    # "s$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@84
    .line 1129
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v2, v0

    #@85
    .local v2, "lastException":Ljava/lang/Exception;
    goto :goto_1

    #@86
    .line 1132
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "lastException":Ljava/lang/Exception;
    .end local v4    # "s":Ljava/security/Provider$Service;
    :cond_6
    new-instance v1, Ljava/security/ProviderException;

    #@88
    .line 1133
    const-string/jumbo v7, "Could not construct SignatureSpi instance"

    #@8b
    .line 1132
    invoke-direct {v1, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@8e
    .line 1134
    .local v1, "e":Ljava/security/ProviderException;
    if-eqz v2, :cond_7

    #@90
    .line 1135
    invoke-virtual {v1, v2}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@93
    .line 1137
    :cond_7
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@94
    .line 1096
    .end local v1    # "e":Ljava/security/ProviderException;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    #@95
    monitor-exit v8

    #@96
    throw v7
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1049
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    #@3
    .line 1050
    iget-object v2, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@5
    instance-of v2, v2, Ljava/lang/Cloneable;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1051
    iget-object v2, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@b
    invoke-virtual {v2}, Ljava/security/SignatureSpi;->clone()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/security/SignatureSpi;

    #@11
    .line 1056
    .local v0, "sigSpiClone":Ljava/security/SignatureSpi;
    new-instance v1, Ljava/security/Signature$Delegate;

    #@13
    invoke-static {p0}, Ljava/security/Signature;->-get0(Ljava/security/Signature;)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-direct {v1, v0, v2}, Ljava/security/Signature$Delegate;-><init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V

    #@1a
    .line 1057
    .local v1, "that":Ljava/security/Signature;
    iget-object v2, p0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    #@1c
    iput-object v2, v1, Ljava/security/Signature;->provider:Ljava/security/Provider;

    #@1e
    .line 1058
    return-object v1

    #@1f
    .line 1060
    .end local v0    # "sigSpiClone":Ljava/security/SignatureSpi;
    .end local v1    # "that":Ljava/security/Signature;
    :cond_0
    new-instance v2, Ljava/lang/CloneNotSupportedException;

    #@21
    invoke-direct {v2}, Ljava/lang/CloneNotSupportedException;-><init>()V

    #@24
    throw v2
.end method

.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 1298
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    #@3
    .line 1299
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@5
    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 1303
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    #@3
    .line 1304
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@5
    invoke-virtual {v0}, Ljava/security/SignatureSpi;->engineGetParameters()Ljava/security/AlgorithmParameters;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1229
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@3
    if-eqz v0, :cond_1

    #@5
    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    #@7
    if-eqz v0, :cond_0

    #@9
    if-nez p1, :cond_1

    #@b
    .line 1230
    :cond_0
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@d
    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    #@10
    .line 1228
    :goto_0
    return-void

    #@11
    .line 1232
    :cond_1
    const/4 v0, 0x2

    #@12
    invoke-direct {p0, v0, p1, v1}, Ljava/security/Signature$Delegate;->chooseProvider(ILjava/security/Key;Ljava/security/SecureRandom;)V

    #@15
    goto :goto_0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 1238
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    #@6
    if-eqz v0, :cond_0

    #@8
    if-nez p1, :cond_1

    #@a
    .line 1239
    :cond_0
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@c
    invoke-virtual {v0, p1, p2}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    #@f
    .line 1237
    :goto_0
    return-void

    #@10
    .line 1241
    :cond_1
    const/4 v0, 0x3

    #@11
    invoke-direct {p0, v0, p1, p2}, Ljava/security/Signature$Delegate;->chooseProvider(ILjava/security/Key;Ljava/security/SecureRandom;)V

    #@14
    goto :goto_0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1220
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@3
    if-eqz v0, :cond_1

    #@5
    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    #@7
    if-eqz v0, :cond_0

    #@9
    if-nez p1, :cond_1

    #@b
    .line 1221
    :cond_0
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@d
    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineInitVerify(Ljava/security/PublicKey;)V

    #@10
    .line 1219
    :goto_0
    return-void

    #@11
    .line 1223
    :cond_1
    const/4 v0, 0x1

    #@12
    invoke-direct {p0, v0, p1, v1}, Ljava/security/Signature$Delegate;->chooseProvider(ILjava/security/Key;Ljava/security/SecureRandom;)V

    #@15
    goto :goto_0
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 1286
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    #@3
    .line 1287
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@5
    invoke-virtual {v0, p1, p2}, Ljava/security/SignatureSpi;->engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V

    #@8
    .line 1285
    return-void
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 1292
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    #@3
    .line 1293
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@5
    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    #@8
    .line 1291
    return-void
.end method

.method protected engineSign([BII)I
    .locals 1
    .param p1, "outbuf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 1268
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    #@3
    .line 1269
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineSign([BII)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method protected engineSign()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 1262
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    #@3
    .line 1263
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@5
    invoke-virtual {v0}, Ljava/security/SignatureSpi;->engineSign()[B

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 1246
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    #@3
    .line 1247
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@5
    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineUpdate(B)V

    #@8
    .line 1245
    return-void
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 1257
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    #@3
    .line 1258
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@5
    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    #@8
    .line 1256
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 1252
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    #@3
    .line 1253
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineUpdate([BII)V

    #@8
    .line 1251
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 1
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 1274
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    #@3
    .line 1275
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@5
    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineVerify([B)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method protected engineVerify([BII)Z
    .locals 1
    .param p1, "sigBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 1280
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    #@3
    .line 1281
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineVerify([BII)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getCurrentSpi()Ljava/security/SignatureSpi;
    .locals 2

    #@0
    .prologue
    .line 1309
    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1310
    :try_start_0
    iget-object v1, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 1309
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method
