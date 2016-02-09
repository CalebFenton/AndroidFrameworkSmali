.class public Lcom/android/internal/telephony/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;,
        Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    }
.end annotation


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field private static final TAG:Ljava/lang/String; = "GSM"

.field public static final UDH_SEPTET_COST_CONCATENATED_MESSAGE:I = 0x6

.field public static final UDH_SEPTET_COST_LENGTH:I = 0x1

.field public static final UDH_SEPTET_COST_ONE_SHIFT_TABLE:I = 0x4

.field public static final UDH_SEPTET_COST_TWO_SHIFT_TABLES:I = 0x7

.field private static final sCharsToGsmTables:[Landroid/util/SparseIntArray;

.field private static final sCharsToShiftTables:[Landroid/util/SparseIntArray;

.field private static sDisableCountryEncodingCheck:Z

.field private static sEnabledLockingShiftTables:[I

.field private static sEnabledSingleShiftTables:[I

.field private static sHighestEnabledSingleShiftCode:I

.field private static final sLanguageShiftTables:[Ljava/lang/String;

.field private static final sLanguageTables:[Ljava/lang/String;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    #@0
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    #@2
    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    #@0
    sget v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 14

    #@0
    .prologue
    .line 1094
    const/4 v11, 0x0

    #@1
    sput-boolean v11, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    #@3
    .line 1133
    const/16 v11, 0xe

    #@5
    new-array v11, v11, [Ljava/lang/String;

    #@7
    .line 1136
    const-string/jumbo v12, "@\u00a3$\u00a5\u00e8\u00e9\u00f9\u00ec\u00f2\u00c7\n\u00d8\u00f8\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u00c6\u00e6\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u00a1ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00bfabcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    #@a
    const/4 v13, 0x0

    #@b
    aput-object v12, v11, v13

    #@d
    .line 1148
    const-string/jumbo v12, "@\u00a3$\u00a5\u20ac\u00e9\u00f9\u0131\u00f2\u00c7\n\u011e\u011f\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u015e\u015f\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u0130ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00e7abcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    #@10
    const/4 v13, 0x1

    #@11
    aput-object v12, v11, v13

    #@13
    .line 1159
    const-string/jumbo v12, ""

    #@16
    const/4 v13, 0x2

    #@17
    aput-object v12, v11, v13

    #@19
    .line 1163
    const-string/jumbo v12, "@\u00a3$\u00a5\u00ea\u00e9\u00fa\u00ed\u00f3\u00e7\n\u00d4\u00f4\r\u00c1\u00e1\u0394_\u00aa\u00c7\u00c0\u221e^\\\u20ac\u00d3|\uffff\u00c2\u00e2\u00ca\u00c9 !\"#\u00ba%&\'()*+,-./0123456789:;<=>?\u00cdABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c3\u00d5\u00da\u00dc\u00a7~abcdefghijklmnopqrstuvwxyz\u00e3\u00f5`\u00fc\u00e0"

    #@1c
    const/4 v13, 0x3

    #@1d
    aput-object v12, v11, v13

    #@1f
    .line 1173
    const-string/jumbo v12, "\u0981\u0982\u0983\u0985\u0986\u0987\u0988\u0989\u098a\u098b\n\u098c \r \u098f\u0990  \u0993\u0994\u0995\u0996\u0997\u0998\u0999\u099a\uffff\u099b\u099c\u099d\u099e !\u099f\u09a0\u09a1\u09a2\u09a3\u09a4)(\u09a5\u09a6,\u09a7.\u09a80123456789:; \u09aa\u09ab?\u09ac\u09ad\u09ae\u09af\u09b0 \u09b2   \u09b6\u09b7\u09b8\u09b9\u09bc\u09bd\u09be\u09bf\u09c0\u09c1\u09c2\u09c3\u09c4  \u09c7\u09c8  \u09cb\u09cc\u09cd\u09ceabcdefghijklmnopqrstuvwxyz\u09d7\u09dc\u09dd\u09f0\u09f1"

    #@22
    const/4 v13, 0x4

    #@23
    aput-object v12, v11, v13

    #@25
    .line 1187
    const-string/jumbo v12, "\u0a81\u0a82\u0a83\u0a85\u0a86\u0a87\u0a88\u0a89\u0a8a\u0a8b\n\u0a8c\u0a8d\r \u0a8f\u0a90\u0a91 \u0a93\u0a94\u0a95\u0a96\u0a97\u0a98\u0a99\u0a9a\uffff\u0a9b\u0a9c\u0a9d\u0a9e !\u0a9f\u0aa0\u0aa1\u0aa2\u0aa3\u0aa4)(\u0aa5\u0aa6,\u0aa7.\u0aa80123456789:; \u0aaa\u0aab?\u0aac\u0aad\u0aae\u0aaf\u0ab0 \u0ab2\u0ab3 \u0ab5\u0ab6\u0ab7\u0ab8\u0ab9\u0abc\u0abd\u0abe\u0abf\u0ac0\u0ac1\u0ac2\u0ac3\u0ac4\u0ac5 \u0ac7\u0ac8\u0ac9 \u0acb\u0acc\u0acd\u0ad0abcdefghijklmnopqrstuvwxyz\u0ae0\u0ae1\u0ae2\u0ae3\u0af1"

    #@28
    const/4 v13, 0x5

    #@29
    aput-object v12, v11, v13

    #@2b
    .line 1203
    const-string/jumbo v12, "\u0901\u0902\u0903\u0905\u0906\u0907\u0908\u0909\u090a\u090b\n\u090c\u090d\r\u090e\u090f\u0910\u0911\u0912\u0913\u0914\u0915\u0916\u0917\u0918\u0919\u091a\uffff\u091b\u091c\u091d\u091e !\u091f\u0920\u0921\u0922\u0923\u0924)(\u0925\u0926,\u0927.\u09280123456789:;\u0929\u092a\u092b?\u092c\u092d\u092e\u092f\u0930\u0931\u0932\u0933\u0934\u0935\u0936\u0937\u0938\u0939\u093c\u093d\u093e\u093f\u0940\u0941\u0942\u0943\u0944\u0945\u0946\u0947\u0948\u0949\u094a\u094b\u094c\u094d\u0950abcdefghijklmnopqrstuvwxyz\u0972\u097b\u097c\u097e\u097f"

    #@2e
    const/4 v13, 0x6

    #@2f
    aput-object v12, v11, v13

    #@31
    .line 1220
    const-string/jumbo v12, " \u0c82\u0c83\u0c85\u0c86\u0c87\u0c88\u0c89\u0c8a\u0c8b\n\u0c8c \r\u0c8e\u0c8f\u0c90 \u0c92\u0c93\u0c94\u0c95\u0c96\u0c97\u0c98\u0c99\u0c9a\uffff\u0c9b\u0c9c\u0c9d\u0c9e !\u0c9f\u0ca0\u0ca1\u0ca2\u0ca3\u0ca4)(\u0ca5\u0ca6,\u0ca7.\u0ca80123456789:; \u0caa\u0cab?\u0cac\u0cad\u0cae\u0caf\u0cb0\u0cb1\u0cb2\u0cb3 \u0cb5\u0cb6\u0cb7\u0cb8\u0cb9\u0cbc\u0cbd\u0cbe\u0cbf\u0cc0\u0cc1\u0cc2\u0cc3\u0cc4 \u0cc6\u0cc7\u0cc8 \u0cca\u0ccb\u0ccc\u0ccd\u0cd5abcdefghijklmnopqrstuvwxyz\u0cd6\u0ce0\u0ce1\u0ce2\u0ce3"

    #@34
    const/4 v13, 0x7

    #@35
    aput-object v12, v11, v13

    #@37
    .line 1236
    const-string/jumbo v12, " \u0d02\u0d03\u0d05\u0d06\u0d07\u0d08\u0d09\u0d0a\u0d0b\n\u0d0c \r\u0d0e\u0d0f\u0d10 \u0d12\u0d13\u0d14\u0d15\u0d16\u0d17\u0d18\u0d19\u0d1a\uffff\u0d1b\u0d1c\u0d1d\u0d1e !\u0d1f\u0d20\u0d21\u0d22\u0d23\u0d24)(\u0d25\u0d26,\u0d27.\u0d280123456789:; \u0d2a\u0d2b?\u0d2c\u0d2d\u0d2e\u0d2f\u0d30\u0d31\u0d32\u0d33\u0d34\u0d35\u0d36\u0d37\u0d38\u0d39 \u0d3d\u0d3e\u0d3f\u0d40\u0d41\u0d42\u0d43\u0d44 \u0d46\u0d47\u0d48 \u0d4a\u0d4b\u0d4c\u0d4d\u0d57abcdefghijklmnopqrstuvwxyz\u0d60\u0d61\u0d62\u0d63\u0d79"

    #@3a
    const/16 v13, 0x8

    #@3c
    aput-object v12, v11, v13

    #@3e
    .line 1252
    const-string/jumbo v12, "\u0b01\u0b02\u0b03\u0b05\u0b06\u0b07\u0b08\u0b09\u0b0a\u0b0b\n\u0b0c \r \u0b0f\u0b10  \u0b13\u0b14\u0b15\u0b16\u0b17\u0b18\u0b19\u0b1a\uffff\u0b1b\u0b1c\u0b1d\u0b1e !\u0b1f\u0b20\u0b21\u0b22\u0b23\u0b24)(\u0b25\u0b26,\u0b27.\u0b280123456789:; \u0b2a\u0b2b?\u0b2c\u0b2d\u0b2e\u0b2f\u0b30 \u0b32\u0b33 \u0b35\u0b36\u0b37\u0b38\u0b39\u0b3c\u0b3d\u0b3e\u0b3f\u0b40\u0b41\u0b42\u0b43\u0b44  \u0b47\u0b48  \u0b4b\u0b4c\u0b4d\u0b56abcdefghijklmnopqrstuvwxyz\u0b57\u0b60\u0b61\u0b62\u0b63"

    #@41
    const/16 v13, 0x9

    #@43
    aput-object v12, v11, v13

    #@45
    .line 1266
    const-string/jumbo v12, "\u0a01\u0a02\u0a03\u0a05\u0a06\u0a07\u0a08\u0a09\u0a0a \n  \r \u0a0f\u0a10  \u0a13\u0a14\u0a15\u0a16\u0a17\u0a18\u0a19\u0a1a\uffff\u0a1b\u0a1c\u0a1d\u0a1e !\u0a1f\u0a20\u0a21\u0a22\u0a23\u0a24)(\u0a25\u0a26,\u0a27.\u0a280123456789:; \u0a2a\u0a2b?\u0a2c\u0a2d\u0a2e\u0a2f\u0a30 \u0a32\u0a33 \u0a35\u0a36 \u0a38\u0a39\u0a3c \u0a3e\u0a3f\u0a40\u0a41\u0a42    \u0a47\u0a48  \u0a4b\u0a4c\u0a4d\u0a51abcdefghijklmnopqrstuvwxyz\u0a70\u0a71\u0a72\u0a73\u0a74"

    #@48
    const/16 v13, 0xa

    #@4a
    aput-object v12, v11, v13

    #@4c
    .line 1280
    const-string/jumbo v12, " \u0b82\u0b83\u0b85\u0b86\u0b87\u0b88\u0b89\u0b8a \n  \r\u0b8e\u0b8f\u0b90 \u0b92\u0b93\u0b94\u0b95   \u0b99\u0b9a\uffff \u0b9c \u0b9e !\u0b9f   \u0ba3\u0ba4)(  , .\u0ba80123456789:;\u0ba9\u0baa ?  \u0bae\u0baf\u0bb0\u0bb1\u0bb2\u0bb3\u0bb4\u0bb5\u0bb6\u0bb7\u0bb8\u0bb9  \u0bbe\u0bbf\u0bc0\u0bc1\u0bc2   \u0bc6\u0bc7\u0bc8 \u0bca\u0bcb\u0bcc\u0bcd\u0bd0abcdefghijklmnopqrstuvwxyz\u0bd7\u0bf0\u0bf1\u0bf2\u0bf9"

    #@4f
    const/16 v13, 0xb

    #@51
    aput-object v12, v11, v13

    #@53
    .line 1292
    const-string/jumbo v12, "\u0c01\u0c02\u0c03\u0c05\u0c06\u0c07\u0c08\u0c09\u0c0a\u0c0b\n\u0c0c \r\u0c0e\u0c0f\u0c10 \u0c12\u0c13\u0c14\u0c15\u0c16\u0c17\u0c18\u0c19\u0c1a\uffff\u0c1b\u0c1c\u0c1d\u0c1e !\u0c1f\u0c20\u0c21\u0c22\u0c23\u0c24)(\u0c25\u0c26,\u0c27.\u0c280123456789:; \u0c2a\u0c2b?\u0c2c\u0c2d\u0c2e\u0c2f\u0c30\u0c31\u0c32\u0c33 \u0c35\u0c36\u0c37\u0c38\u0c39 \u0c3d\u0c3e\u0c3f\u0c40\u0c41\u0c42\u0c43\u0c44 \u0c46\u0c47\u0c48 \u0c4a\u0c4b\u0c4c\u0c4d\u0c55abcdefghijklmnopqrstuvwxyz\u0c56\u0c60\u0c61\u0c62\u0c63"

    #@56
    const/16 v13, 0xc

    #@58
    aput-object v12, v11, v13

    #@5a
    .line 1308
    const-string/jumbo v12, "\u0627\u0622\u0628\u067b\u0680\u067e\u06a6\u062a\u06c2\u067f\n\u0679\u067d\r\u067a\u067c\u062b\u062c\u0681\u0684\u0683\u0685\u0686\u0687\u062d\u062e\u062f\uffff\u068c\u0688\u0689\u068a !\u068f\u068d\u0630\u0631\u0691\u0693)(\u0699\u0632,\u0696.\u06980123456789:;\u069a\u0633\u0634?\u0635\u0636\u0637\u0638\u0639\u0641\u0642\u06a9\u06aa\u06ab\u06af\u06b3\u06b1\u0644\u0645\u0646\u06ba\u06bb\u06bc\u0648\u06c4\u06d5\u06c1\u06be\u0621\u06cc\u06d0\u06d2\u064d\u0650\u064f\u0657\u0654abcdefghijklmnopqrstuvwxyz\u0655\u0651\u0653\u0656\u0670"

    #@5d
    const/16 v13, 0xd

    #@5f
    aput-object v12, v11, v13

    #@61
    .line 1133
    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    #@63
    .line 1326
    const/16 v11, 0xe

    #@65
    new-array v11, v11, [Ljava/lang/String;

    #@67
    .line 1329
    const-string/jumbo v12, "          \u000c         ^                   {}     \\            [~] |                                    \u20ac                          "

    #@6a
    const/4 v13, 0x0

    #@6b
    aput-object v12, v11, v13

    #@6d
    .line 1335
    const-string/jumbo v12, "          \u000c         ^                   {}     \\            [~] |      \u011e \u0130         \u015e               \u00e7 \u20ac \u011f \u0131         \u015f            "

    #@70
    const/4 v13, 0x1

    #@71
    aput-object v12, v11, v13

    #@73
    .line 1343
    const-string/jumbo v12, "         \u00e7\u000c         ^                   {}     \\            [~] |\u00c1       \u00cd     \u00d3     \u00da           \u00e1   \u20ac   \u00ed     \u00f3     \u00fa          "

    #@76
    const/4 v13, 0x2

    #@77
    aput-object v12, v11, v13

    #@79
    .line 1351
    const-string/jumbo v12, "     \u00ea   \u00e7\u000c\u00d4\u00f4 \u00c1\u00e1  \u03a6\u0393^\u03a9\u03a0\u03a8\u03a3\u0398     \u00ca        {}     \\            [~] |\u00c0       \u00cd     \u00d3     \u00da     \u00c3\u00d5    \u00c2   \u20ac   \u00ed     \u00f3     \u00fa     \u00e3\u00f5  \u00e2"

    #@7c
    const/4 v13, 0x3

    #@7d
    aput-object v12, v11, v13

    #@7f
    .line 1361
    const-string/jumbo v12, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u09e6\u09e7 \u09e8\u09e9\u09ea\u09eb\u09ec\u09ed\u09ee\u09ef\u09df\u09e0\u09e1\u09e2{}\u09e3\u09f2\u09f3\u09f4\u09f5\\\u09f6\u09f7\u09f8\u09f9\u09fa       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    #@82
    const/4 v13, 0x4

    #@83
    aput-object v12, v11, v13

    #@85
    .line 1371
    const-string/jumbo v12, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ae6\u0ae7\u0ae8\u0ae9\u0aea\u0aeb\u0aec\u0aed\u0aee\u0aef  {}     \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    #@88
    const/4 v13, 0x5

    #@89
    aput-object v12, v11, v13

    #@8b
    .line 1379
    const-string/jumbo v12, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0966\u0967\u0968\u0969\u096a\u096b\u096c\u096d\u096e\u096f\u0951\u0952{}\u0953\u0954\u0958\u0959\u095a\\\u095b\u095c\u095d\u095e\u095f\u0960\u0961\u0962\u0963\u0970\u0971 [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    #@8e
    const/4 v13, 0x6

    #@8f
    aput-object v12, v11, v13

    #@91
    .line 1389
    const-string/jumbo v12, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ce6\u0ce7\u0ce8\u0ce9\u0cea\u0ceb\u0cec\u0ced\u0cee\u0cef\u0cde\u0cf1{}\u0cf2    \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    #@94
    const/4 v13, 0x7

    #@95
    aput-object v12, v11, v13

    #@97
    .line 1397
    const-string/jumbo v12, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0d66\u0d67\u0d68\u0d69\u0d6a\u0d6b\u0d6c\u0d6d\u0d6e\u0d6f\u0d70\u0d71{}\u0d72\u0d73\u0d74\u0d75\u0d7a\\\u0d7b\u0d7c\u0d7d\u0d7e\u0d7f       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    #@9a
    const/16 v13, 0x8

    #@9c
    aput-object v12, v11, v13

    #@9e
    .line 1407
    const-string/jumbo v12, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0b66\u0b67\u0b68\u0b69\u0b6a\u0b6b\u0b6c\u0b6d\u0b6e\u0b6f\u0b5c\u0b5d{}\u0b5f\u0b70\u0b71  \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    #@a1
    const/16 v13, 0x9

    #@a3
    aput-object v12, v11, v13

    #@a5
    .line 1417
    const-string/jumbo v12, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0a66\u0a67\u0a68\u0a69\u0a6a\u0a6b\u0a6c\u0a6d\u0a6e\u0a6f\u0a59\u0a5a{}\u0a5b\u0a5c\u0a5e\u0a75 \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    #@a8
    const/16 v13, 0xa

    #@aa
    aput-object v12, v11, v13

    #@ac
    .line 1428
    const-string/jumbo v12, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0be6\u0be7\u0be8\u0be9\u0bea\u0beb\u0bec\u0bed\u0bee\u0bef\u0bf3\u0bf4{}\u0bf5\u0bf6\u0bf7\u0bf8\u0bfa\\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    #@af
    const/16 v13, 0xb

    #@b1
    aput-object v12, v11, v13

    #@b3
    .line 1439
    const-string/jumbo v12, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*   \u0c66\u0c67\u0c68\u0c69\u0c6a\u0c6b\u0c6c\u0c6d\u0c6e\u0c6f\u0c58\u0c59{}\u0c78\u0c79\u0c7a\u0c7b\u0c7c\\\u0c7d\u0c7e\u0c7f         [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    #@b6
    const/16 v13, 0xc

    #@b8
    aput-object v12, v11, v13

    #@ba
    .line 1449
    const-string/jumbo v12, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0600\u0601 \u06f0\u06f1\u06f2\u06f3\u06f4\u06f5\u06f6\u06f7\u06f8\u06f9\u060c\u060d{}\u060e\u060f\u0610\u0611\u0612\\\u0613\u0614\u061b\u061f\u0640\u0652\u0658\u066b\u066c\u0672\u0673\u06cd[~]\u06d4|ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    #@bd
    const/16 v13, 0xd

    #@bf
    aput-object v12, v11, v13

    #@c1
    .line 1326
    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    #@c3
    .line 1459
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->enableCountrySpecificEncodings()V

    #@c6
    .line 1460
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    #@c8
    array-length v6, v11

    #@c9
    .line 1461
    .local v6, "numTables":I
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    #@cb
    array-length v5, v11

    #@cc
    .line 1462
    .local v5, "numShiftTables":I
    if-eq v6, v5, :cond_0

    #@ce
    .line 1463
    const-string/jumbo v11, "GSM"

    #@d1
    new-instance v12, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string/jumbo v13, "Error: language tables array length "

    #@d9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v12

    #@dd
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v12

    #@e1
    .line 1464
    const-string/jumbo v13, " != shift tables array length "

    #@e4
    .line 1463
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v12

    #@e8
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v12

    #@ec
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v12

    #@f0
    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f3
    .line 1467
    :cond_0
    new-array v11, v6, [Landroid/util/SparseIntArray;

    #@f5
    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    #@f7
    .line 1468
    const/4 v3, 0x0

    #@f8
    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_3

    #@fa
    .line 1469
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    #@fc
    aget-object v9, v11, v3

    #@fe
    .line 1471
    .local v9, "table":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@101
    move-result v10

    #@102
    .line 1472
    .local v10, "tableLen":I
    if-eqz v10, :cond_1

    #@104
    const/16 v11, 0x80

    #@106
    if-eq v10, v11, :cond_1

    #@108
    .line 1473
    const-string/jumbo v11, "GSM"

    #@10b
    new-instance v12, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    const-string/jumbo v13, "Error: language tables index "

    #@113
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v12

    #@117
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v12

    #@11b
    .line 1474
    const-string/jumbo v13, " length "

    #@11e
    .line 1473
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v12

    #@122
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@125
    move-result-object v12

    #@126
    .line 1474
    const-string/jumbo v13, " (expected 128 or 0)"

    #@129
    .line 1473
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v12

    #@12d
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@130
    move-result-object v12

    #@131
    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@134
    .line 1477
    :cond_1
    new-instance v1, Landroid/util/SparseIntArray;

    #@136
    invoke-direct {v1, v10}, Landroid/util/SparseIntArray;-><init>(I)V

    #@139
    .line 1478
    .local v1, "charToGsmTable":Landroid/util/SparseIntArray;
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    #@13b
    aput-object v1, v11, v3

    #@13d
    .line 1479
    const/4 v4, 0x0

    #@13e
    .local v4, "j":I
    :goto_1
    if-ge v4, v10, :cond_2

    #@140
    .line 1480
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    #@143
    move-result v0

    #@144
    .line 1481
    .local v0, "c":C
    invoke-virtual {v1, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@147
    .line 1479
    add-int/lit8 v4, v4, 0x1

    #@149
    goto :goto_1

    #@14a
    .line 1468
    .end local v0    # "c":C
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@14c
    goto :goto_0

    #@14d
    .line 1485
    .end local v1    # "charToGsmTable":Landroid/util/SparseIntArray;
    .end local v4    # "j":I
    .end local v9    # "table":Ljava/lang/String;
    .end local v10    # "tableLen":I
    :cond_3
    new-array v11, v6, [Landroid/util/SparseIntArray;

    #@14f
    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    #@151
    .line 1486
    const/4 v3, 0x0

    #@152
    :goto_2
    if-ge v3, v5, :cond_7

    #@154
    .line 1487
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    #@156
    aget-object v7, v11, v3

    #@158
    .line 1489
    .local v7, "shiftTable":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@15b
    move-result v8

    #@15c
    .line 1490
    .local v8, "shiftTableLen":I
    if-eqz v8, :cond_4

    #@15e
    const/16 v11, 0x80

    #@160
    if-eq v8, v11, :cond_4

    #@162
    .line 1491
    const-string/jumbo v11, "GSM"

    #@165
    new-instance v12, Ljava/lang/StringBuilder;

    #@167
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@16a
    const-string/jumbo v13, "Error: language shift tables index "

    #@16d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v12

    #@171
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@174
    move-result-object v12

    #@175
    .line 1492
    const-string/jumbo v13, " length "

    #@178
    .line 1491
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v12

    #@17c
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v12

    #@180
    .line 1492
    const-string/jumbo v13, " (expected 128 or 0)"

    #@183
    .line 1491
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v12

    #@187
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v12

    #@18b
    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18e
    .line 1495
    :cond_4
    new-instance v2, Landroid/util/SparseIntArray;

    #@190
    invoke-direct {v2, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    #@193
    .line 1496
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    #@195
    aput-object v2, v11, v3

    #@197
    .line 1497
    const/4 v4, 0x0

    #@198
    .restart local v4    # "j":I
    :goto_3
    if-ge v4, v8, :cond_6

    #@19a
    .line 1498
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    #@19d
    move-result v0

    #@19e
    .line 1499
    .restart local v0    # "c":C
    const/16 v11, 0x20

    #@1a0
    if-eq v0, v11, :cond_5

    #@1a2
    .line 1500
    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@1a5
    .line 1497
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@1a7
    goto :goto_3

    #@1a8
    .line 1486
    .end local v0    # "c":C
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@1aa
    goto :goto_2

    #@1ab
    .line 40
    .end local v2    # "charToShiftTable":Landroid/util/SparseIntArray;
    .end local v4    # "j":I
    .end local v7    # "shiftTable":Ljava/lang/String;
    .end local v8    # "shiftTableLen":I
    :cond_7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static charToGsm(C)I
    .locals 4
    .param p0, "c"    # C

    #@0
    .prologue
    const/16 v3, 0x20

    #@2
    const/4 v2, 0x0

    #@3
    .line 144
    const/4 v1, 0x0

    #@4
    :try_start_0
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 145
    :catch_0
    move-exception v0

    #@a
    .line 147
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    #@c
    aget-object v1, v1, v2

    #@e
    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    #@11
    move-result v1

    #@12
    return v1
.end method

.method public static charToGsm(CZ)I
    .locals 5
    .param p0, "c"    # C
    .param p1, "throwException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v2, -0x1

    #@4
    .line 167
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    #@6
    aget-object v1, v1, v3

    #@8
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@b
    move-result v0

    #@c
    .line 169
    .local v0, "ret":I
    if-ne v0, v2, :cond_2

    #@e
    .line 170
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    #@10
    aget-object v1, v1, v3

    #@12
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@15
    move-result v0

    #@16
    .line 172
    if-ne v0, v2, :cond_1

    #@18
    .line 173
    if-eqz p1, :cond_0

    #@1a
    .line 174
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    #@1c
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    #@1f
    throw v1

    #@20
    .line 176
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    #@22
    aget-object v1, v1, v3

    #@24
    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    #@27
    move-result v1

    #@28
    return v1

    #@29
    .line 179
    :cond_1
    const/16 v1, 0x1b

    #@2b
    return v1

    #@2c
    .line 183
    :cond_2
    return v0
.end method

.method public static charToGsmExtended(C)I
    .locals 5
    .param p0, "c"    # C

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v2, -0x1

    #@4
    .line 197
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    #@6
    aget-object v1, v1, v3

    #@8
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@b
    move-result v0

    #@c
    .line 199
    .local v0, "ret":I
    if-ne v0, v2, :cond_0

    #@e
    .line 200
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    #@10
    aget-object v1, v1, v3

    #@12
    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 203
    :cond_0
    return v0
.end method

.method public static countGsmSeptets(C)I
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 723
    const/4 v1, 0x0

    #@2
    :try_start_0
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 724
    :catch_0
    move-exception v0

    #@8
    .line 726
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    return v2
.end method

.method public static countGsmSeptets(CZ)I
    .locals 4
    .param p0, "c"    # C
    .param p1, "throwsException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, -0x1

    #@3
    .line 741
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    #@5
    aget-object v0, v0, v2

    #@7
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@a
    move-result v0

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 742
    return v3

    #@e
    .line 745
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    #@10
    aget-object v0, v0, v2

    #@12
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@15
    move-result v0

    #@16
    if-eq v0, v1, :cond_1

    #@18
    .line 746
    const/4 v0, 0x2

    #@19
    return v0

    #@1a
    .line 749
    :cond_1
    if-eqz p1, :cond_2

    #@1c
    .line 750
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    #@1e
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    #@21
    throw v0

    #@22
    .line 753
    :cond_2
    return v3
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 27
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    #@0
    .prologue
    .line 828
    sget-boolean v23, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    #@2
    if-nez v23, :cond_0

    #@4
    .line 829
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->enableCountrySpecificEncodings()V

    #@7
    .line 832
    :cond_0
    sget-object v23, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    #@9
    move-object/from16 v0, v23

    #@b
    array-length v0, v0

    #@c
    move/from16 v23, v0

    #@e
    sget-object v24, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    #@10
    move-object/from16 v0, v24

    #@12
    array-length v0, v0

    #@13
    move/from16 v24, v0

    #@15
    add-int v23, v23, v24

    #@17
    if-nez v23, :cond_3

    #@19
    .line 833
    new-instance v20, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@1b
    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    #@1e
    .line 834
    .local v20, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v23, 0x0

    #@20
    const/16 v24, 0x0

    #@22
    move-object/from16 v0, p0

    #@24
    move/from16 v1, p1

    #@26
    move/from16 v2, v23

    #@28
    move/from16 v3, v24

    #@2a
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    #@2d
    move-result v12

    #@2e
    .line 835
    .local v12, "septets":I
    const/16 v23, -0x1

    #@30
    move/from16 v0, v23

    #@32
    if-ne v12, v0, :cond_1

    #@34
    .line 836
    const/16 v23, 0x0

    #@36
    return-object v23

    #@37
    .line 838
    :cond_1
    const/16 v23, 0x1

    #@39
    move/from16 v0, v23

    #@3b
    move-object/from16 v1, v20

    #@3d
    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    #@3f
    .line 839
    move-object/from16 v0, v20

    #@41
    iput v12, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    #@43
    .line 840
    const/16 v23, 0xa0

    #@45
    move/from16 v0, v23

    #@47
    if-le v12, v0, :cond_2

    #@49
    .line 841
    add-int/lit16 v0, v12, 0x98

    #@4b
    move/from16 v23, v0

    #@4d
    move/from16 v0, v23

    #@4f
    div-int/lit16 v0, v0, 0x99

    #@51
    move/from16 v23, v0

    #@53
    move/from16 v0, v23

    #@55
    move-object/from16 v1, v20

    #@57
    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@59
    .line 843
    move-object/from16 v0, v20

    #@5b
    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@5d
    move/from16 v23, v0

    #@5f
    move/from16 v0, v23

    #@61
    mul-int/lit16 v0, v0, 0x99

    #@63
    move/from16 v23, v0

    #@65
    sub-int v23, v23, v12

    #@67
    move/from16 v0, v23

    #@69
    move-object/from16 v1, v20

    #@6b
    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    #@6d
    .line 849
    :goto_0
    const/16 v23, 0x1

    #@6f
    move/from16 v0, v23

    #@71
    move-object/from16 v1, v20

    #@73
    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    #@75
    .line 850
    return-object v20

    #@76
    .line 846
    :cond_2
    const/16 v23, 0x1

    #@78
    move/from16 v0, v23

    #@7a
    move-object/from16 v1, v20

    #@7c
    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@7e
    .line 847
    rsub-int v0, v12, 0xa0

    #@80
    move/from16 v23, v0

    #@82
    move/from16 v0, v23

    #@84
    move-object/from16 v1, v20

    #@86
    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    #@88
    goto :goto_0

    #@89
    .line 853
    .end local v12    # "septets":I
    .end local v20    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    sget v9, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    #@8b
    .line 854
    .local v9, "maxSingleShiftCode":I
    new-instance v8, Ljava/util/ArrayList;

    #@8d
    .line 855
    sget-object v23, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    #@8f
    move-object/from16 v0, v23

    #@91
    array-length v0, v0

    #@92
    move/from16 v23, v0

    #@94
    add-int/lit8 v23, v23, 0x1

    #@96
    .line 854
    move/from16 v0, v23

    #@98
    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@9b
    .line 858
    .local v8, "lpcList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    new-instance v23, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    #@9d
    const/16 v24, 0x0

    #@9f
    invoke-direct/range {v23 .. v24}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    #@a2
    move-object/from16 v0, v23

    #@a4
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a7
    .line 859
    sget-object v24, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    #@a9
    const/16 v23, 0x0

    #@ab
    move-object/from16 v0, v24

    #@ad
    array-length v0, v0

    #@ae
    move/from16 v25, v0

    #@b0
    :goto_1
    move/from16 v0, v23

    #@b2
    move/from16 v1, v25

    #@b4
    if-ge v0, v1, :cond_6

    #@b6
    aget v5, v24, v23

    #@b8
    .line 861
    .local v5, "i":I
    if-eqz v5, :cond_4

    #@ba
    sget-object v26, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    #@bc
    aget-object v26, v26, v5

    #@be
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->isEmpty()Z

    #@c1
    move-result v26

    #@c2
    if-eqz v26, :cond_5

    #@c4
    .line 859
    :cond_4
    :goto_2
    add-int/lit8 v23, v23, 0x1

    #@c6
    goto :goto_1

    #@c7
    .line 862
    :cond_5
    new-instance v26, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    #@c9
    move-object/from16 v0, v26

    #@cb
    invoke-direct {v0, v5}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    #@ce
    move-object/from16 v0, v26

    #@d0
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d3
    goto :goto_2

    #@d4
    .line 866
    .end local v5    # "i":I
    :cond_6
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    #@d7
    move-result v17

    #@d8
    .line 868
    .local v17, "sz":I
    const/4 v5, 0x0

    #@d9
    .restart local v5    # "i":I
    :goto_3
    move/from16 v0, v17

    #@db
    if-ge v5, v0, :cond_7

    #@dd
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    #@e0
    move-result v23

    #@e1
    if-eqz v23, :cond_a

    #@e3
    .line 909
    :cond_7
    new-instance v20, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@e5
    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    #@e8
    .line 910
    .restart local v20    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const v23, 0x7fffffff

    #@eb
    move/from16 v0, v23

    #@ed
    move-object/from16 v1, v20

    #@ef
    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@f1
    .line 911
    const/16 v23, 0x1

    #@f3
    move/from16 v0, v23

    #@f5
    move-object/from16 v1, v20

    #@f7
    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    #@f9
    .line 912
    const v10, 0x7fffffff

    #@fc
    .line 913
    .local v10, "minUnencodableCount":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ff
    move-result-object v7

    #@100
    .local v7, "lpc$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@103
    move-result v23

    #@104
    if-eqz v23, :cond_1c

    #@106
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@109
    move-result-object v6

    #@10a
    check-cast v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    #@10c
    .line 914
    .local v6, "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    const/4 v15, 0x0

    #@10d
    .local v15, "shiftTable":I
    :goto_4
    if-gt v15, v9, :cond_8

    #@10f
    .line 915
    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    #@111
    move-object/from16 v23, v0

    #@113
    aget v12, v23, v15

    #@115
    .line 916
    .restart local v12    # "septets":I
    const/16 v23, -0x1

    #@117
    move/from16 v0, v23

    #@119
    if-ne v12, v0, :cond_13

    #@11b
    .line 914
    :cond_9
    :goto_5
    add-int/lit8 v15, v15, 0x1

    #@11d
    goto :goto_4

    #@11e
    .line 869
    .end local v6    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v7    # "lpc$iterator":Ljava/util/Iterator;
    .end local v10    # "minUnencodableCount":I
    .end local v12    # "septets":I
    .end local v15    # "shiftTable":I
    .end local v20    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_a
    move-object/from16 v0, p0

    #@120
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@123
    move-result v4

    #@124
    .line 870
    .local v4, "c":C
    const/16 v23, 0x1b

    #@126
    move/from16 v0, v23

    #@128
    if-ne v4, v0, :cond_c

    #@12a
    .line 871
    const-string/jumbo v23, "GSM"

    #@12d
    const-string/jumbo v24, "countGsmSeptets() string contains Escape character, ignoring!"

    #@130
    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@133
    .line 868
    :cond_b
    add-int/lit8 v5, v5, 0x1

    #@135
    goto :goto_3

    #@136
    .line 875
    :cond_c
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@139
    move-result-object v7

    #@13a
    .restart local v7    # "lpc$iterator":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@13d
    move-result v23

    #@13e
    if-eqz v23, :cond_b

    #@140
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@143
    move-result-object v6

    #@144
    check-cast v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    #@146
    .line 876
    .restart local v6    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    sget-object v23, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    #@148
    iget v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    #@14a
    move/from16 v24, v0

    #@14c
    aget-object v23, v23, v24

    #@14e
    const/16 v24, -0x1

    #@150
    move-object/from16 v0, v23

    #@152
    move/from16 v1, v24

    #@154
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@157
    move-result v19

    #@158
    .line 877
    .local v19, "tableIndex":I
    const/16 v23, -0x1

    #@15a
    move/from16 v0, v19

    #@15c
    move/from16 v1, v23

    #@15e
    if-ne v0, v1, :cond_11

    #@160
    .line 879
    const/16 v18, 0x0

    #@162
    .local v18, "table":I
    :goto_6
    move/from16 v0, v18

    #@164
    if-gt v0, v9, :cond_d

    #@166
    .line 880
    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    #@168
    move-object/from16 v23, v0

    #@16a
    aget v23, v23, v18

    #@16c
    const/16 v24, -0x1

    #@16e
    move/from16 v0, v23

    #@170
    move/from16 v1, v24

    #@172
    if-eq v0, v1, :cond_e

    #@174
    .line 881
    sget-object v23, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    #@176
    aget-object v23, v23, v18

    #@178
    const/16 v24, -0x1

    #@17a
    move-object/from16 v0, v23

    #@17c
    move/from16 v1, v24

    #@17e
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@181
    move-result v16

    #@182
    .line 882
    .local v16, "shiftTableIndex":I
    const/16 v23, -0x1

    #@184
    move/from16 v0, v16

    #@186
    move/from16 v1, v23

    #@188
    if-ne v0, v1, :cond_10

    #@18a
    .line 883
    if-eqz p1, :cond_f

    #@18c
    .line 885
    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    #@18e
    move-object/from16 v23, v0

    #@190
    aget v24, v23, v18

    #@192
    add-int/lit8 v24, v24, 0x1

    #@194
    aput v24, v23, v18

    #@196
    .line 886
    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    #@198
    move-object/from16 v23, v0

    #@19a
    aget v24, v23, v18

    #@19c
    add-int/lit8 v24, v24, 0x1

    #@19e
    aput v24, v23, v18

    #@1a0
    .line 879
    .end local v16    # "shiftTableIndex":I
    :cond_e
    :goto_7
    add-int/lit8 v18, v18, 0x1

    #@1a2
    goto :goto_6

    #@1a3
    .line 889
    .restart local v16    # "shiftTableIndex":I
    :cond_f
    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    #@1a5
    move-object/from16 v23, v0

    #@1a7
    const/16 v24, -0x1

    #@1a9
    aput v24, v23, v18

    #@1ab
    goto :goto_7

    #@1ac
    .line 893
    :cond_10
    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    #@1ae
    move-object/from16 v23, v0

    #@1b0
    aget v24, v23, v18

    #@1b2
    add-int/lit8 v24, v24, 0x2

    #@1b4
    aput v24, v23, v18

    #@1b6
    goto :goto_7

    #@1b7
    .line 899
    .end local v16    # "shiftTableIndex":I
    .end local v18    # "table":I
    :cond_11
    const/16 v18, 0x0

    #@1b9
    .restart local v18    # "table":I
    :goto_8
    move/from16 v0, v18

    #@1bb
    if-gt v0, v9, :cond_d

    #@1bd
    .line 900
    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    #@1bf
    move-object/from16 v23, v0

    #@1c1
    aget v23, v23, v18

    #@1c3
    const/16 v24, -0x1

    #@1c5
    move/from16 v0, v23

    #@1c7
    move/from16 v1, v24

    #@1c9
    if-eq v0, v1, :cond_12

    #@1cb
    .line 901
    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    #@1cd
    move-object/from16 v23, v0

    #@1cf
    aget v24, v23, v18

    #@1d1
    add-int/lit8 v24, v24, 0x1

    #@1d3
    aput v24, v23, v18

    #@1d5
    .line 899
    :cond_12
    add-int/lit8 v18, v18, 0x1

    #@1d7
    goto :goto_8

    #@1d8
    .line 920
    .end local v4    # "c":C
    .end local v18    # "table":I
    .end local v19    # "tableIndex":I
    .restart local v10    # "minUnencodableCount":I
    .restart local v12    # "septets":I
    .restart local v15    # "shiftTable":I
    .restart local v20    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_13
    iget v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    #@1da
    move/from16 v23, v0

    #@1dc
    if-eqz v23, :cond_17

    #@1de
    if-eqz v15, :cond_17

    #@1e0
    .line 921
    const/16 v21, 0x8

    #@1e2
    .line 929
    .local v21, "udhLength":I
    :goto_9
    add-int v23, v12, v21

    #@1e4
    const/16 v24, 0xa0

    #@1e6
    move/from16 v0, v23

    #@1e8
    move/from16 v1, v24

    #@1ea
    if-le v0, v1, :cond_1a

    #@1ec
    .line 930
    if-nez v21, :cond_14

    #@1ee
    .line 931
    const/16 v21, 0x1

    #@1f0
    .line 933
    :cond_14
    add-int/lit8 v21, v21, 0x6

    #@1f2
    .line 934
    move/from16 v0, v21

    #@1f4
    rsub-int v13, v0, 0xa0

    #@1f6
    .line 935
    .local v13, "septetsPerMessage":I
    add-int v23, v12, v13

    #@1f8
    add-int/lit8 v23, v23, -0x1

    #@1fa
    div-int v11, v23, v13

    #@1fc
    .line 936
    .local v11, "msgCount":I
    mul-int v23, v11, v13

    #@1fe
    sub-int v14, v23, v12

    #@200
    .line 942
    .end local v13    # "septetsPerMessage":I
    .local v14, "septetsRemaining":I
    :goto_a
    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    #@202
    move-object/from16 v23, v0

    #@204
    aget v22, v23, v15

    #@206
    .line 943
    .local v22, "unencodableCount":I
    if-eqz p1, :cond_15

    #@208
    move/from16 v0, v22

    #@20a
    if-gt v0, v10, :cond_9

    #@20c
    .line 946
    :cond_15
    if-eqz p1, :cond_1b

    #@20e
    move/from16 v0, v22

    #@210
    if-ge v0, v10, :cond_1b

    #@212
    .line 949
    :cond_16
    :goto_b
    move/from16 v10, v22

    #@214
    .line 950
    move-object/from16 v0, v20

    #@216
    iput v11, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@218
    .line 951
    move-object/from16 v0, v20

    #@21a
    iput v12, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    #@21c
    .line 952
    move-object/from16 v0, v20

    #@21e
    iput v14, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    #@220
    .line 953
    iget v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    #@222
    move/from16 v23, v0

    #@224
    move/from16 v0, v23

    #@226
    move-object/from16 v1, v20

    #@228
    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    #@22a
    .line 954
    move-object/from16 v0, v20

    #@22c
    iput v15, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    #@22e
    goto/16 :goto_5

    #@230
    .line 922
    .end local v11    # "msgCount":I
    .end local v14    # "septetsRemaining":I
    .end local v21    # "udhLength":I
    .end local v22    # "unencodableCount":I
    :cond_17
    iget v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    #@232
    move/from16 v23, v0

    #@234
    if-nez v23, :cond_18

    #@236
    if-eqz v15, :cond_19

    #@238
    .line 923
    :cond_18
    const/16 v21, 0x5

    #@23a
    .line 922
    .restart local v21    # "udhLength":I
    goto :goto_9

    #@23b
    .line 925
    .end local v21    # "udhLength":I
    :cond_19
    const/16 v21, 0x0

    #@23d
    .restart local v21    # "udhLength":I
    goto :goto_9

    #@23e
    .line 938
    :cond_1a
    const/4 v11, 0x1

    #@23f
    .line 939
    .restart local v11    # "msgCount":I
    move/from16 v0, v21

    #@241
    rsub-int v0, v0, 0xa0

    #@243
    move/from16 v23, v0

    #@245
    sub-int v14, v23, v12

    #@247
    .restart local v14    # "septetsRemaining":I
    goto :goto_a

    #@248
    .line 947
    .restart local v22    # "unencodableCount":I
    :cond_1b
    move-object/from16 v0, v20

    #@24a
    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@24c
    move/from16 v23, v0

    #@24e
    move/from16 v0, v23

    #@250
    if-lt v11, v0, :cond_16

    #@252
    move-object/from16 v0, v20

    #@254
    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@256
    move/from16 v23, v0

    #@258
    move/from16 v0, v23

    #@25a
    if-ne v11, v0, :cond_9

    #@25c
    .line 948
    move-object/from16 v0, v20

    #@25e
    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    #@260
    move/from16 v23, v0

    #@262
    move/from16 v0, v23

    #@264
    if-le v14, v0, :cond_9

    #@266
    goto :goto_b

    #@267
    .line 959
    .end local v6    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v11    # "msgCount":I
    .end local v12    # "septets":I
    .end local v14    # "septetsRemaining":I
    .end local v15    # "shiftTable":I
    .end local v21    # "udhLength":I
    .end local v22    # "unencodableCount":I
    :cond_1c
    move-object/from16 v0, v20

    #@269
    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@26b
    move/from16 v23, v0

    #@26d
    const v24, 0x7fffffff

    #@270
    move/from16 v0, v23

    #@272
    move/from16 v1, v24

    #@274
    if-ne v0, v1, :cond_1d

    #@276
    .line 960
    const/16 v23, 0x0

    #@278
    return-object v23

    #@279
    .line 963
    :cond_1d
    return-object v20
.end method

.method public static countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I
    .locals 9
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 784
    const/4 v3, 0x0

    #@2
    .line 785
    .local v3, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v5

    #@6
    .line 786
    .local v5, "sz":I
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    #@8
    aget-object v1, v6, p2

    #@a
    .line 787
    .local v1, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    #@c
    aget-object v2, v6, p3

    #@e
    .line 788
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    #@f
    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_4

    #@11
    .line 789
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@14
    move-result v0

    #@15
    .line 790
    .local v0, "c":C
    const/16 v6, 0x1b

    #@17
    if-ne v0, v6, :cond_0

    #@19
    .line 791
    const-string/jumbo v6, "GSM"

    #@1c
    const-string/jumbo v7, "countGsmSeptets() string contains Escape character, skipping."

    #@1f
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 788
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@24
    goto :goto_0

    #@25
    .line 794
    :cond_0
    invoke-virtual {v1, v0, v8}, Landroid/util/SparseIntArray;->get(II)I

    #@28
    move-result v6

    #@29
    if-eq v6, v8, :cond_1

    #@2b
    .line 795
    add-int/lit8 v3, v3, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 796
    :cond_1
    invoke-virtual {v2, v0, v8}, Landroid/util/SparseIntArray;->get(II)I

    #@31
    move-result v6

    #@32
    if-eq v6, v8, :cond_2

    #@34
    .line 797
    add-int/lit8 v3, v3, 0x2

    #@36
    goto :goto_1

    #@37
    .line 798
    :cond_2
    if-eqz p1, :cond_3

    #@39
    .line 799
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 801
    :cond_3
    return v8

    #@3d
    .line 804
    .end local v0    # "c":C
    :cond_4
    return v3
.end method

.method private static enableCountrySpecificEncodings()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1065
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@4
    move-result-object v0

    #@5
    .line 1067
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x107002c

    #@8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@b
    move-result-object v1

    #@c
    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    #@e
    .line 1068
    const v1, 0x107002d

    #@11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@14
    move-result-object v1

    #@15
    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    #@17
    .line 1070
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    #@19
    array-length v1, v1

    #@1a
    if-lez v1, :cond_0

    #@1c
    .line 1072
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    #@1e
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    #@20
    array-length v2, v2

    #@21
    add-int/lit8 v2, v2, -0x1

    #@23
    aget v1, v1, v2

    #@25
    .line 1071
    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    #@27
    .line 1064
    :goto_0
    return-void

    #@28
    .line 1074
    :cond_0
    sput v2, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    #@2a
    goto :goto_0
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "langTable"    # I
    .param p4, "langShiftTable"    # I

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 983
    const/4 v0, 0x0

    #@2
    .line 984
    .local v0, "accumulator":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v5

    #@6
    .line 986
    .local v5, "size":I
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    #@8
    aget-object v2, v6, p3

    #@a
    .line 987
    .local v2, "charToLangTable":Landroid/util/SparseIntArray;
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    #@c
    aget-object v1, v6, p4

    #@e
    .line 988
    .local v1, "charToLangShiftTable":Landroid/util/SparseIntArray;
    move v4, p1

    #@f
    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_3

    #@11
    .line 989
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v6

    #@15
    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    #@18
    move-result v3

    #@19
    .line 990
    .local v3, "encodedSeptet":I
    if-ne v3, v7, :cond_1

    #@1b
    .line 991
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v6

    #@1f
    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    #@22
    move-result v3

    #@23
    .line 992
    if-ne v3, v7, :cond_0

    #@25
    .line 994
    add-int/lit8 v0, v0, 0x1

    #@27
    .line 1001
    :goto_1
    if-le v0, p2, :cond_2

    #@29
    .line 1002
    return v4

    #@2a
    .line 996
    :cond_0
    add-int/lit8 v0, v0, 0x2

    #@2c
    goto :goto_1

    #@2d
    .line 999
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 988
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@32
    goto :goto_0

    #@33
    .line 1005
    .end local v3    # "encodedSeptet":I
    :cond_3
    return v5
.end method

.method static declared-synchronized getEnabledLockingShiftTables()[I
    .locals 2

    #@0
    .prologue
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    #@2
    monitor-enter v0

    #@3
    .line 1057
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method static declared-synchronized getEnabledSingleShiftTables()[I
    .locals 2

    #@0
    .prologue
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    #@2
    monitor-enter v0

    #@3
    .line 1046
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "pdu"    # [B
    .param p1, "offset"    # I
    .param p2, "lengthSeptets"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v4, v3

    #@5
    move v5, v3

    #@6
    .line 456
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static gsm7BitPackedToString([BIIIII)Ljava/lang/String;
    .locals 15
    .param p0, "pdu"    # [B
    .param p1, "offset"    # I
    .param p2, "lengthSeptets"    # I
    .param p3, "numPaddingBits"    # I
    .param p4, "languageTable"    # I
    .param p5, "shiftTable"    # I

    #@0
    .prologue
    .line 477
    new-instance v9, Ljava/lang/StringBuilder;

    #@2
    move/from16 v0, p2

    #@4
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 479
    .local v9, "ret":Ljava/lang/StringBuilder;
    if-ltz p4, :cond_0

    #@9
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    #@b
    array-length v12, v12

    #@c
    move/from16 v0, p4

    #@e
    if-le v0, v12, :cond_1

    #@10
    .line 480
    :cond_0
    const-string/jumbo v12, "GSM"

    #@13
    new-instance v13, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v14, "unknown language table "

    #@1b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v13

    #@1f
    move/from16 v0, p4

    #@21
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v13

    #@25
    const-string/jumbo v14, ", using default"

    #@28
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v13

    #@2c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v13

    #@30
    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 481
    const/16 p4, 0x0

    #@35
    .line 483
    :cond_1
    if-ltz p5, :cond_2

    #@37
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    #@39
    array-length v12, v12

    #@3a
    move/from16 v0, p5

    #@3c
    if-le v0, v12, :cond_3

    #@3e
    .line 484
    :cond_2
    const-string/jumbo v12, "GSM"

    #@41
    new-instance v13, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v14, "unknown single shift table "

    #@49
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v13

    #@4d
    move/from16 v0, p5

    #@4f
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v13

    #@53
    const-string/jumbo v14, ", using default"

    #@56
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v13

    #@5a
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v13

    #@5e
    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 485
    const/16 p5, 0x0

    #@63
    .line 489
    :cond_3
    const/4 v8, 0x0

    #@64
    .line 490
    .local v8, "prevCharWasEscape":Z
    :try_start_0
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    #@66
    aget-object v7, v12, p4

    #@68
    .line 491
    .local v7, "languageTableToChar":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    #@6a
    aget-object v11, v12, p5

    #@6c
    .line 493
    .local v11, "shiftTableToChar":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    #@6f
    move-result v12

    #@70
    if-eqz v12, :cond_4

    #@72
    .line 494
    const-string/jumbo v12, "GSM"

    #@75
    new-instance v13, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v14, "no language table for code "

    #@7d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v13

    #@81
    move/from16 v0, p4

    #@83
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v13

    #@87
    const-string/jumbo v14, ", using default"

    #@8a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v13

    #@8e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v13

    #@92
    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    .line 495
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    #@97
    const/4 v13, 0x0

    #@98
    aget-object v7, v12, v13

    #@9a
    .line 497
    :cond_4
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    #@9d
    move-result v12

    #@9e
    if-eqz v12, :cond_5

    #@a0
    .line 498
    const-string/jumbo v12, "GSM"

    #@a3
    new-instance v13, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v14, "no single shift table for code "

    #@ab
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v13

    #@af
    move/from16 v0, p5

    #@b1
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v13

    #@b5
    const-string/jumbo v14, ", using default"

    #@b8
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v13

    #@bc
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v13

    #@c0
    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c3
    .line 499
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    #@c5
    const/4 v13, 0x0

    #@c6
    aget-object v11, v12, v13

    #@c8
    .line 502
    :cond_5
    const/4 v6, 0x0

    #@c9
    .local v6, "i":I
    :goto_0
    move/from16 v0, p2

    #@cb
    if-ge v6, v0, :cond_b

    #@cd
    .line 503
    mul-int/lit8 v12, v6, 0x7

    #@cf
    add-int v1, v12, p3

    #@d1
    .line 505
    .local v1, "bitOffset":I
    div-int/lit8 v2, v1, 0x8

    #@d3
    .line 506
    .local v2, "byteOffset":I
    rem-int/lit8 v10, v1, 0x8

    #@d5
    .line 509
    .local v10, "shift":I
    add-int v12, p1, v2

    #@d7
    aget-byte v12, p0, v12

    #@d9
    shr-int/2addr v12, v10

    #@da
    and-int/lit8 v5, v12, 0x7f

    #@dc
    .line 512
    .local v5, "gsmVal":I
    const/4 v12, 0x1

    #@dd
    if-le v10, v12, :cond_6

    #@df
    .line 514
    add-int/lit8 v12, v10, -0x1

    #@e1
    const/16 v13, 0x7f

    #@e3
    shr-int v12, v13, v12

    #@e5
    and-int/2addr v5, v12

    #@e6
    .line 516
    add-int v12, p1, v2

    #@e8
    add-int/lit8 v12, v12, 0x1

    #@ea
    aget-byte v12, p0, v12

    #@ec
    rsub-int/lit8 v13, v10, 0x8

    #@ee
    shl-int/2addr v12, v13

    #@ef
    and-int/lit8 v12, v12, 0x7f

    #@f1
    or-int/2addr v5, v12

    #@f2
    .line 519
    :cond_6
    if-eqz v8, :cond_9

    #@f4
    .line 520
    const/16 v12, 0x1b

    #@f6
    if-ne v5, v12, :cond_7

    #@f8
    .line 521
    const/16 v12, 0x20

    #@fa
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@fd
    .line 530
    :goto_1
    const/4 v8, 0x0

    #@fe
    .line 502
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@100
    goto :goto_0

    #@101
    .line 523
    :cond_7
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    #@104
    move-result v3

    #@105
    .line 524
    .local v3, "c":C
    const/16 v12, 0x20

    #@107
    if-ne v3, v12, :cond_8

    #@109
    .line 525
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    #@10c
    move-result v12

    #@10d
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@110
    goto :goto_1

    #@111
    .line 537
    .end local v1    # "bitOffset":I
    .end local v2    # "byteOffset":I
    .end local v3    # "c":C
    .end local v5    # "gsmVal":I
    .end local v6    # "i":I
    .end local v7    # "languageTableToChar":Ljava/lang/String;
    .end local v10    # "shift":I
    .end local v11    # "shiftTableToChar":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@112
    .line 538
    .local v4, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v12, "GSM"

    #@115
    const-string/jumbo v13, "Error GSM 7 bit packed: "

    #@118
    invoke-static {v12, v13, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11b
    .line 539
    const/4 v12, 0x0

    #@11c
    return-object v12

    #@11d
    .line 527
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "bitOffset":I
    .restart local v2    # "byteOffset":I
    .restart local v3    # "c":C
    .restart local v5    # "gsmVal":I
    .restart local v6    # "i":I
    .restart local v7    # "languageTableToChar":Ljava/lang/String;
    .restart local v10    # "shift":I
    .restart local v11    # "shiftTableToChar":Ljava/lang/String;
    :cond_8
    :try_start_1
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@120
    goto :goto_1

    #@121
    .line 531
    .end local v3    # "c":C
    :cond_9
    const/16 v12, 0x1b

    #@123
    if-ne v5, v12, :cond_a

    #@125
    .line 532
    const/4 v8, 0x1

    #@126
    goto :goto_2

    #@127
    .line 534
    :cond_a
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    #@12a
    move-result v12

    #@12b
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@12e
    goto :goto_2

    #@12f
    .line 542
    .end local v1    # "bitOffset":I
    .end local v2    # "byteOffset":I
    .end local v5    # "gsmVal":I
    .end local v10    # "shift":I
    :cond_b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@132
    move-result-object v12

    #@133
    return-object v12
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 560
    const-string/jumbo v0, ""

    #@3
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "characterset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 575
    const/4 v5, 0x0

    #@1
    .line 576
    .local v5, "isMbcs":Z
    const/4 v2, 0x0

    #@2
    .line 577
    .local v2, "charset":Ljava/nio/charset/Charset;
    const/4 v7, 0x0

    #@3
    .line 579
    .local v7, "mbcsBuffer":Ljava/nio/ByteBuffer;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v12

    #@7
    if-nez v12, :cond_0

    #@9
    .line 580
    const-string/jumbo v12, "us-ascii"

    #@c
    move-object/from16 v0, p3

    #@e
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v12

    #@12
    if-eqz v12, :cond_2

    #@14
    .line 588
    .end local v2    # "charset":Ljava/nio/charset/Charset;
    .end local v7    # "mbcsBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    #@16
    const/4 v13, 0x0

    #@17
    aget-object v6, v12, v13

    #@19
    .line 589
    .local v6, "languageTableToChar":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    #@1b
    const/4 v13, 0x0

    #@1c
    aget-object v11, v12, v13

    #@1e
    .line 591
    .local v11, "shiftTableToChar":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    #@20
    move/from16 v0, p2

    #@22
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@25
    .line 592
    .local v9, "ret":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    #@26
    .line 593
    .local v8, "prevWasEscape":Z
    move v3, p1

    #@27
    .local v3, "i":I
    move v4, v3

    #@28
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_1
    add-int v12, p1, p2

    #@2a
    if-ge v4, v12, :cond_1

    #@2c
    .line 596
    aget-byte v12, p0, v4

    #@2e
    and-int/lit16 v1, v12, 0xff

    #@30
    .line 598
    .local v1, "c":I
    const/16 v12, 0xff

    #@32
    if-ne v1, v12, :cond_3

    #@34
    .line 643
    .end local v1    # "c":I
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v12

    #@38
    return-object v12

    #@39
    .line 581
    .end local v4    # "i":I
    .end local v6    # "languageTableToChar":Ljava/lang/String;
    .end local v8    # "prevWasEscape":Z
    .end local v9    # "ret":Ljava/lang/StringBuilder;
    .end local v11    # "shiftTableToChar":Ljava/lang/String;
    .restart local v2    # "charset":Ljava/nio/charset/Charset;
    .restart local v7    # "mbcsBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    #@3c
    move-result v12

    #@3d
    .line 579
    if-eqz v12, :cond_0

    #@3f
    .line 582
    const/4 v5, 0x1

    #@40
    .line 583
    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@43
    move-result-object v2

    #@44
    .line 584
    .local v2, "charset":Ljava/nio/charset/Charset;
    const/4 v12, 0x2

    #@45
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@48
    move-result-object v7

    #@49
    .local v7, "mbcsBuffer":Ljava/nio/ByteBuffer;
    goto :goto_0

    #@4a
    .line 600
    .end local v2    # "charset":Ljava/nio/charset/Charset;
    .end local v7    # "mbcsBuffer":Ljava/nio/ByteBuffer;
    .restart local v1    # "c":I
    .restart local v4    # "i":I
    .restart local v6    # "languageTableToChar":Ljava/lang/String;
    .restart local v8    # "prevWasEscape":Z
    .restart local v9    # "ret":Ljava/lang/StringBuilder;
    .restart local v11    # "shiftTableToChar":Ljava/lang/String;
    :cond_3
    const/16 v12, 0x1b

    #@4c
    if-ne v1, v12, :cond_5

    #@4e
    .line 601
    if-eqz v8, :cond_4

    #@50
    .line 605
    const/16 v12, 0x20

    #@52
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@55
    .line 606
    const/4 v8, 0x0

    #@56
    move v3, v4

    #@57
    .line 593
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@59
    move v4, v3

    #@5a
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    #@5b
    .line 608
    :cond_4
    const/4 v8, 0x1

    #@5c
    move v3, v4

    #@5d
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    #@5e
    .line 611
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_5
    if-eqz v8, :cond_9

    #@60
    .line 613
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@63
    move-result v12

    #@64
    if-ge v1, v12, :cond_6

    #@66
    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    #@69
    move-result v10

    #@6a
    .line 614
    :goto_3
    const/16 v12, 0x20

    #@6c
    if-ne v10, v12, :cond_8

    #@6e
    .line 616
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@71
    move-result v12

    #@72
    if-ge v1, v12, :cond_7

    #@74
    .line 617
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    #@77
    move-result v12

    #@78
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7b
    move v3, v4

    #@7c
    .line 639
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_4
    const/4 v8, 0x0

    #@7d
    goto :goto_2

    #@7e
    .line 613
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_6
    const/16 v10, 0x20

    #@80
    .local v10, "shiftChar":C
    goto :goto_3

    #@81
    .line 619
    .end local v10    # "shiftChar":C
    :cond_7
    const/16 v12, 0x20

    #@83
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@86
    move v3, v4

    #@87
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_4

    #@88
    .line 622
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8b
    move v3, v4

    #@8c
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_4

    #@8d
    .line 625
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_9
    if-eqz v5, :cond_a

    #@8f
    const/16 v12, 0x80

    #@91
    if-ge v1, v12, :cond_b

    #@93
    .line 626
    :cond_a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@96
    move-result v12

    #@97
    if-ge v1, v12, :cond_c

    #@99
    .line 627
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    #@9c
    move-result v12

    #@9d
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a0
    :goto_5
    move v3, v4

    #@a1
    .line 625
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_4

    #@a2
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_b
    add-int/lit8 v12, v4, 0x1

    #@a4
    add-int v13, p1, p2

    #@a6
    if-ge v12, v13, :cond_a

    #@a8
    .line 633
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@ab
    .line 634
    add-int/lit8 v3, v4, 0x1

    #@ad
    .end local v4    # "i":I
    .restart local v3    # "i":I
    const/4 v12, 0x2

    #@ae
    invoke-virtual {v7, p0, v4, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@b1
    .line 635
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@b4
    .line 636
    invoke-virtual {v2, v7}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    #@b7
    move-result-object v12

    #@b8
    invoke-virtual {v12}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    #@bb
    move-result-object v12

    #@bc
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    goto :goto_4

    #@c0
    .line 629
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_c
    const/16 v12, 0x20

    #@c2
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c5
    goto :goto_5
.end method

.method public static gsmExtendedToChar(I)C
    .locals 4
    .param p0, "gsmChar"    # I

    #@0
    .prologue
    const/16 v3, 0x20

    #@2
    const/4 v2, 0x0

    #@3
    .line 242
    const/16 v1, 0x1b

    #@5
    if-ne p0, v1, :cond_0

    #@7
    .line 243
    return v3

    #@8
    .line 244
    :cond_0
    if-ltz p0, :cond_2

    #@a
    const/16 v1, 0x80

    #@c
    if-ge p0, v1, :cond_2

    #@e
    .line 245
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    #@10
    aget-object v1, v1, v2

    #@12
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    .line 246
    .local v0, "c":C
    if-ne v0, v3, :cond_1

    #@18
    .line 247
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    #@1a
    aget-object v1, v1, v2

    #@1c
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v1

    #@20
    return v1

    #@21
    .line 249
    :cond_1
    return v0

    #@22
    .line 252
    .end local v0    # "c":C
    :cond_2
    return v3
.end method

.method public static gsmToChar(I)C
    .locals 2
    .param p0, "gsmChar"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 220
    if-ltz p0, :cond_0

    #@3
    const/16 v0, 0x80

    #@5
    if-ge p0, v0, :cond_0

    #@7
    .line 221
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    #@9
    aget-object v0, v0, v1

    #@b
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 223
    :cond_0
    const/16 v0, 0x20

    #@12
    return v0
.end method

.method public static isGsmSeptets(C)Z
    .locals 4
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, -0x1

    #@3
    .line 758
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    #@5
    aget-object v0, v0, v2

    #@7
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@a
    move-result v0

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 759
    return v3

    #@e
    .line 762
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    #@10
    aget-object v0, v0, v2

    #@12
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@15
    move-result v0

    #@16
    if-eq v0, v1, :cond_1

    #@18
    .line 763
    return v3

    #@19
    .line 766
    :cond_1
    return v2
.end method

.method private static packSmsChar([BII)V
    .locals 4
    .param p0, "packedChars"    # [B
    .param p1, "bitOffset"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 433
    div-int/lit8 v0, p1, 0x8

    #@2
    .line 434
    .local v0, "byteOffset":I
    rem-int/lit8 v1, p1, 0x8

    #@4
    .line 436
    .local v1, "shift":I
    add-int/lit8 v0, v0, 0x1

    #@6
    aget-byte v2, p0, v0

    #@8
    shl-int v3, p2, v1

    #@a
    or-int/2addr v2, v3

    #@b
    int-to-byte v2, v2

    #@c
    aput-byte v2, p0, v0

    #@e
    .line 438
    const/4 v2, 0x1

    #@f
    if-le v1, v2, :cond_0

    #@11
    .line 439
    add-int/lit8 v0, v0, 0x1

    #@13
    rsub-int/lit8 v2, v1, 0x8

    #@15
    shr-int v2, p2, v2

    #@17
    int-to-byte v2, v2

    #@18
    aput-byte v2, p0, v0

    #@1a
    .line 432
    :cond_0
    return-void
.end method

.method static declared-synchronized setEnabledLockingShiftTables([I)V
    .locals 2
    .param p0, "tables"    # [I

    #@0
    .prologue
    const-class v1, Lcom/android/internal/telephony/GsmAlphabet;

    #@2
    monitor-enter v1

    #@3
    .line 1034
    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    #@5
    .line 1035
    const/4 v0, 0x1

    #@6
    sput-boolean v0, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 1033
    return-void

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method static declared-synchronized setEnabledSingleShiftTables([I)V
    .locals 2
    .param p0, "tables"    # [I

    #@0
    .prologue
    const-class v1, Lcom/android/internal/telephony/GsmAlphabet;

    #@2
    monitor-enter v1

    #@3
    .line 1016
    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    #@5
    .line 1017
    const/4 v0, 0x1

    #@6
    sput-boolean v0, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    #@8
    .line 1019
    array-length v0, p0

    #@9
    if-lez v0, :cond_0

    #@b
    .line 1020
    array-length v0, p0

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    aget v0, p0, v0

    #@10
    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :goto_0
    monitor-exit v1

    #@13
    .line 1015
    return-void

    #@14
    .line 1022
    :cond_0
    const/4 v0, 0x0

    #@15
    :try_start_1
    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    goto :goto_0

    #@18
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 332
    const/4 v0, 0x1

    #@2
    invoke-static {p0, v1, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;II)[B
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "languageTable"    # I
    .param p2, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    #@0
    .prologue
    .line 356
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .locals 15
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "startingSeptetOffset"    # I
    .param p2, "throwException"    # Z
    .param p3, "languageTable"    # I
    .param p4, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    #@0
    .prologue
    .line 383
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v7

    #@4
    .line 384
    .local v7, "dataLen":I
    if-eqz p2, :cond_0

    #@6
    const/4 v13, 0x0

    #@7
    :goto_0
    move/from16 v0, p3

    #@9
    move/from16 v1, p4

    #@b
    invoke-static {p0, v13, v0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    #@e
    move-result v10

    #@f
    .line 386
    .local v10, "septetCount":I
    const/4 v13, -0x1

    #@10
    if-ne v10, v13, :cond_1

    #@12
    .line 387
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    #@14
    const-string/jumbo v14, "countGsmSeptetsUsingTables(): unencodable char"

    #@17
    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v13

    #@1b
    .line 384
    .end local v10    # "septetCount":I
    :cond_0
    const/4 v13, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 389
    .restart local v10    # "septetCount":I
    :cond_1
    add-int v10, v10, p1

    #@1f
    .line 390
    const/16 v13, 0xff

    #@21
    if-le v10, v13, :cond_2

    #@23
    .line 391
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    #@25
    const-string/jumbo v14, "Payload cannot exceed 255 septets"

    #@28
    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v13

    #@2c
    .line 393
    :cond_2
    mul-int/lit8 v13, v10, 0x7

    #@2e
    add-int/lit8 v13, v13, 0x7

    #@30
    div-int/lit8 v3, v13, 0x8

    #@32
    .line 394
    .local v3, "byteCount":I
    add-int/lit8 v13, v3, 0x1

    #@34
    new-array v9, v13, [B

    #@36
    .line 395
    .local v9, "ret":[B
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    #@38
    aget-object v5, v13, p3

    #@3a
    .line 396
    .local v5, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    #@3c
    aget-object v6, v13, p4

    #@3e
    .line 397
    .local v6, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v8, 0x0

    #@3f
    .local v8, "i":I
    move/from16 v11, p1

    #@41
    .local v11, "septets":I
    mul-int/lit8 v2, p1, 0x7

    #@43
    .line 398
    .local v2, "bitOffset":I
    :goto_1
    if-ge v8, v7, :cond_6

    #@45
    if-ge v11, v10, :cond_6

    #@47
    .line 400
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    #@4a
    move-result v4

    #@4b
    .line 401
    .local v4, "c":C
    const/4 v13, -0x1

    #@4c
    invoke-virtual {v5, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    #@4f
    move-result v12

    #@50
    .line 402
    .local v12, "v":I
    const/4 v13, -0x1

    #@51
    if-ne v12, v13, :cond_4

    #@53
    .line 403
    const/4 v13, -0x1

    #@54
    invoke-virtual {v6, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    #@57
    move-result v12

    #@58
    .line 404
    const/4 v13, -0x1

    #@59
    if-ne v12, v13, :cond_5

    #@5b
    .line 405
    if-eqz p2, :cond_3

    #@5d
    .line 406
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    #@5f
    const-string/jumbo v14, "stringToGsm7BitPacked(): unencodable char"

    #@62
    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    #@65
    throw v13

    #@66
    .line 408
    :cond_3
    const/16 v13, 0x20

    #@68
    const/16 v14, 0x20

    #@6a
    invoke-virtual {v5, v13, v14}, Landroid/util/SparseIntArray;->get(II)I

    #@6d
    move-result v12

    #@6e
    .line 416
    :cond_4
    :goto_2
    invoke-static {v9, v2, v12}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    #@71
    .line 417
    add-int/lit8 v11, v11, 0x1

    #@73
    .line 399
    add-int/lit8 v8, v8, 0x1

    #@75
    add-int/lit8 v2, v2, 0x7

    #@77
    goto :goto_1

    #@78
    .line 411
    :cond_5
    const/16 v13, 0x1b

    #@7a
    invoke-static {v9, v2, v13}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    #@7d
    .line 412
    add-int/lit8 v2, v2, 0x7

    #@7f
    .line 413
    add-int/lit8 v11, v11, 0x1

    #@81
    goto :goto_2

    #@82
    .line 419
    .end local v4    # "c":C
    .end local v12    # "v":I
    :cond_6
    int-to-byte v13, v10

    #@83
    const/4 v14, 0x0

    #@84
    aput-byte v13, v9, v14

    #@86
    .line 420
    return-object v9
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 271
    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 299
    if-eqz p1, :cond_0

    #@4
    array-length v3, p1

    #@5
    if-nez v3, :cond_1

    #@7
    .line 300
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    #@a
    move-result-object v3

    #@b
    return-object v3

    #@c
    .line 303
    :cond_1
    array-length v3, p1

    #@d
    add-int/lit8 v3, v3, 0x1

    #@f
    mul-int/lit8 v0, v3, 0x8

    #@11
    .line 304
    .local v0, "headerBits":I
    add-int/lit8 v3, v0, 0x6

    #@13
    div-int/lit8 v1, v3, 0x7

    #@15
    .line 306
    .local v1, "headerSeptets":I
    invoke-static {p0, v1, v4, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    #@18
    move-result-object v2

    #@19
    .line 310
    .local v2, "ret":[B
    array-length v3, p1

    #@1a
    int-to-byte v3, v3

    #@1b
    aput-byte v3, v2, v4

    #@1d
    .line 311
    array-length v3, p1

    #@1e
    const/4 v4, 0x2

    #@1f
    invoke-static {p1, v5, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@22
    .line 312
    return-object v2
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 656
    const/4 v2, 0x1

    #@2
    invoke-static {p0, v2, v3, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    #@5
    move-result v1

    #@6
    .line 659
    .local v1, "septets":I
    new-array v0, v1, [B

    #@8
    .line 661
    .local v0, "ret":[B
    array-length v2, v0

    #@9
    invoke-static {p0, v0, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    #@c
    .line 663
    return-object v0
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/16 v11, 0x20

    #@2
    const/4 v10, 0x0

    #@3
    const/4 v9, -0x1

    #@4
    .line 678
    move v4, p2

    #@5
    .line 679
    .local v4, "outByteIndex":I
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    #@7
    aget-object v1, v8, v10

    #@9
    .line 680
    .local v1, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    #@b
    aget-object v2, v8, v10

    #@d
    .line 683
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    #@e
    .local v3, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@11
    move-result v6

    #@12
    .local v6, "sz":I
    move v5, v4

    #@13
    .line 684
    .end local v4    # "outByteIndex":I
    .local v5, "outByteIndex":I
    :goto_0
    if-ge v3, v6, :cond_1

    #@15
    sub-int v8, v5, p2

    #@17
    if-ge v8, p3, :cond_1

    #@19
    .line 687
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v0

    #@1d
    .line 689
    .local v0, "c":C
    invoke-virtual {v1, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    #@20
    move-result v7

    #@21
    .line 691
    .local v7, "v":I
    if-ne v7, v9, :cond_4

    #@23
    .line 692
    invoke-virtual {v2, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    #@26
    move-result v7

    #@27
    .line 693
    if-ne v7, v9, :cond_0

    #@29
    .line 694
    invoke-virtual {v1, v11, v11}, Landroid/util/SparseIntArray;->get(II)I

    #@2c
    move-result v7

    #@2d
    move v4, v5

    #@2e
    .line 705
    .end local v5    # "outByteIndex":I
    .restart local v4    # "outByteIndex":I
    :goto_1
    add-int/lit8 v5, v4, 0x1

    #@30
    .end local v4    # "outByteIndex":I
    .restart local v5    # "outByteIndex":I
    int-to-byte v8, v7

    #@31
    aput-byte v8, p1, v4

    #@33
    .line 685
    add-int/lit8 v3, v3, 0x1

    #@35
    goto :goto_0

    #@36
    .line 697
    :cond_0
    add-int/lit8 v8, v5, 0x1

    #@38
    sub-int/2addr v8, p2

    #@39
    if-lt v8, p3, :cond_2

    #@3b
    .line 709
    .end local v0    # "c":C
    .end local v7    # "v":I
    :cond_1
    :goto_2
    sub-int v8, v5, p2

    #@3d
    if-ge v8, p3, :cond_3

    #@3f
    .line 710
    add-int/lit8 v4, v5, 0x1

    #@41
    .end local v5    # "outByteIndex":I
    .restart local v4    # "outByteIndex":I
    aput-byte v9, p1, v5

    #@43
    move v5, v4

    #@44
    .end local v4    # "outByteIndex":I
    .restart local v5    # "outByteIndex":I
    goto :goto_2

    #@45
    .line 701
    .restart local v0    # "c":C
    .restart local v7    # "v":I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    #@47
    .end local v5    # "outByteIndex":I
    .restart local v4    # "outByteIndex":I
    const/16 v8, 0x1b

    #@49
    aput-byte v8, p1, v5

    #@4b
    goto :goto_1

    #@4c
    .line 677
    .end local v0    # "c":C
    .end local v4    # "outByteIndex":I
    .end local v7    # "v":I
    .restart local v5    # "outByteIndex":I
    :cond_3
    return-void

    #@4d
    .restart local v0    # "c":C
    .restart local v7    # "v":I
    :cond_4
    move v4, v5

    #@4e
    .end local v5    # "outByteIndex":I
    .restart local v4    # "outByteIndex":I
    goto :goto_1
.end method
