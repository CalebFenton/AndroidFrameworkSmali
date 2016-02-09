.class public final Lcom/android/server/hdmi/HdmiCecMessageValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;
    }
.end annotation


# static fields
.field private static final DEST_ALL:I = 0x3

.field private static final DEST_BROADCAST:I = 0x2

.field private static final DEST_DIRECT:I = 0x1

.field static final ERROR_DESTINATION:I = 0x2

.field static final ERROR_PARAMETER:I = 0x3

.field static final ERROR_PARAMETER_SHORT:I = 0x4

.field static final ERROR_SOURCE:I = 0x1

.field static final OK:I = 0x0

.field private static final SRC_UNREGISTERED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "HdmiCecMessageValidator"


# instance fields
.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field final mValidationInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z
    .locals 1
    .param p1, "params"    # [B
    .param p2, "offset"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Z)I
    .locals 1
    .param p0, "success"    # Z

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->toErrorCode(Z)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 11
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    #@0
    .prologue
    const/4 v6, 0x5

    #@1
    const/4 v10, 0x3

    #@2
    const/4 v9, 0x2

    #@3
    const/4 v8, 0x6

    #@4
    const/4 v7, 0x1

    #@5
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 63
    new-instance v4, Landroid/util/SparseArray;

    #@a
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    #@d
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mValidationInfo:Landroid/util/SparseArray;

    #@f
    .line 66
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@11
    .line 69
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;

    #@13
    const/4 v4, 0x0

    #@14
    invoke-direct {v3, p0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;)V

    #@17
    .line 70
    .local v3, "physicalAddressValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;
    const/16 v4, 0x82

    #@19
    invoke-direct {p0, v4, v3, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@1c
    .line 72
    const/16 v4, 0x9d

    #@1e
    invoke-direct {p0, v4, v3, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@21
    .line 74
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;

    #@23
    const/4 v5, 0x0

    #@24
    invoke-direct {v4, p0, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;)V

    #@27
    .line 73
    const/16 v5, 0x84

    #@29
    invoke-direct {p0, v5, v4, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@2c
    .line 76
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;

    #@2e
    const/4 v5, 0x0

    #@2f
    invoke-direct {v4, p0, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;)V

    #@32
    .line 75
    const/16 v5, 0x80

    #@34
    invoke-direct {p0, v5, v4, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@37
    .line 77
    const/16 v4, 0x81

    #@39
    invoke-direct {p0, v4, v3, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@3c
    .line 79
    const/16 v4, 0x86

    #@3e
    invoke-direct {p0, v4, v3, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@41
    .line 82
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;

    #@43
    const/4 v5, 0x0

    #@44
    invoke-direct {v4, p0, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;)V

    #@47
    .line 81
    const/16 v5, 0x70

    #@49
    invoke-direct {p0, v5, v4, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@4c
    .line 85
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    #@4e
    const/4 v4, 0x0

    #@4f
    invoke-direct {v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    #@52
    .line 86
    .local v1, "noneValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;
    const/16 v4, 0xff

    #@54
    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@57
    .line 87
    const/16 v4, 0x9f

    #@59
    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@5c
    .line 88
    const/16 v4, 0x91

    #@5e
    invoke-direct {p0, v4, v1, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@61
    .line 90
    const/16 v4, 0x71

    #@63
    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@66
    .line 91
    const/16 v4, 0x8f

    #@68
    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@6b
    .line 92
    const/16 v4, 0x8c

    #@6d
    invoke-direct {p0, v4, v1, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@70
    .line 94
    const/16 v4, 0x46

    #@72
    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@75
    .line 95
    const/16 v4, 0x83

    #@77
    invoke-direct {p0, v4, v1, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@7a
    .line 97
    const/16 v4, 0x7d

    #@7c
    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@7f
    .line 99
    const/4 v4, 0x4

    #@80
    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@83
    .line 100
    const/16 v4, 0xc0

    #@85
    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@88
    .line 101
    const/16 v4, 0xb

    #@8a
    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@8d
    .line 102
    const/16 v4, 0xf

    #@8f
    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@92
    .line 103
    const/16 v4, 0xc1

    #@94
    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@97
    .line 104
    const/16 v4, 0xc2

    #@99
    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@9c
    .line 105
    const/16 v4, 0xc3

    #@9e
    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@a1
    .line 106
    const/16 v4, 0xc4

    #@a3
    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@a6
    .line 107
    const/16 v4, 0x85

    #@a8
    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@ab
    .line 109
    const/16 v4, 0x36

    #@ad
    const/4 v5, 0x7

    #@ae
    invoke-direct {p0, v4, v1, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@b1
    .line 110
    const/16 v4, 0xc5

    #@b3
    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@b6
    .line 111
    const/16 v4, 0xd

    #@b8
    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@bb
    .line 112
    invoke-direct {p0, v8, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@be
    .line 113
    invoke-direct {p0, v6, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@c1
    .line 114
    const/16 v4, 0x45

    #@c3
    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@c6
    .line 115
    const/16 v4, 0x8b

    #@c8
    invoke-direct {p0, v4, v1, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@cb
    .line 120
    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    #@cd
    invoke-direct {v2, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    #@d0
    .line 122
    .local v2, "oneByteValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    #@d2
    const/16 v5, 0x8

    #@d4
    invoke-direct {v4, v7, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    #@d7
    .line 121
    const/16 v5, 0x9

    #@d9
    invoke-direct {p0, v5, v4, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@dc
    .line 123
    const/16 v4, 0xa

    #@de
    invoke-direct {p0, v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@e1
    .line 128
    const/16 v4, 0x9e

    #@e3
    invoke-direct {p0, v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@e6
    .line 130
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    #@e8
    invoke-direct {v4, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    #@eb
    .line 129
    const/16 v5, 0x32

    #@ed
    invoke-direct {p0, v5, v4, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@f0
    .line 137
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    #@f2
    const/4 v4, 0x0

    #@f3
    const/16 v5, 0xe

    #@f5
    invoke-direct {v0, v4, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    #@f8
    .line 139
    .local v0, "maxLengthValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    #@fa
    invoke-direct {v4, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    #@fd
    .line 138
    const/16 v5, 0x87

    #@ff
    invoke-direct {p0, v5, v4, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@102
    .line 142
    const/16 v4, 0x89

    #@104
    invoke-direct {p0, v4, v0, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@107
    .line 145
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    #@109
    const/4 v5, 0x4

    #@10a
    const/16 v6, 0xe

    #@10c
    invoke-direct {v4, v5, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    #@10f
    .line 144
    const/16 v5, 0xa0

    #@111
    .line 145
    const/4 v6, 0x7

    #@112
    .line 144
    invoke-direct {p0, v5, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@115
    .line 146
    const/16 v4, 0x8a

    #@117
    .line 147
    const/4 v5, 0x7

    #@118
    .line 146
    invoke-direct {p0, v4, v0, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@11b
    .line 150
    const/16 v4, 0x64

    #@11d
    invoke-direct {p0, v4, v0, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@120
    .line 151
    const/16 v4, 0x47

    #@122
    invoke-direct {p0, v4, v0, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@125
    .line 154
    const/16 v4, 0x8d

    #@127
    invoke-direct {p0, v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@12a
    .line 155
    const/16 v4, 0x8e

    #@12c
    invoke-direct {p0, v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@12f
    .line 160
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    #@131
    invoke-direct {v4, v7, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    #@134
    .line 159
    const/16 v5, 0x44

    #@136
    invoke-direct {p0, v5, v4, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@139
    .line 163
    const/16 v4, 0x90

    #@13b
    invoke-direct {p0, v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@13e
    .line 167
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    #@140
    invoke-direct {v4, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    #@143
    .line 166
    const/4 v5, 0x0

    #@144
    invoke-direct {p0, v5, v4, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@147
    .line 170
    const/16 v4, 0x7a

    #@149
    invoke-direct {p0, v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@14c
    .line 172
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    #@14e
    invoke-direct {v4, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    #@151
    .line 171
    const/16 v5, 0xa3

    #@153
    invoke-direct {p0, v5, v4, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@156
    .line 173
    const/16 v4, 0xa4

    #@158
    invoke-direct {p0, v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@15b
    .line 175
    const/16 v4, 0x72

    #@15d
    invoke-direct {p0, v4, v2, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@160
    .line 176
    const/16 v4, 0x7e

    #@162
    invoke-direct {p0, v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@165
    .line 180
    const/16 v4, 0x9a

    #@167
    invoke-direct {p0, v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@16a
    .line 185
    const/16 v4, 0xf8

    #@16c
    invoke-direct {p0, v4, v0, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@16f
    .line 65
    return-void
.end method

.method private addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "validator"    # Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;
    .param p3, "addrType"    # I

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mValidationInfo:Landroid/util/SparseArray;

    #@2
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    #@4
    invoke-direct {v1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    #@7
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@a
    .line 189
    return-void
.end method

.method private isValidPhysicalAddress([BI)Z
    .locals 4
    .param p1, "params"    # [B
    .param p2, "offset"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 262
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@3
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 264
    return v3

    #@a
    .line 266
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    #@d
    move-result v0

    #@e
    .line 267
    .local v0, "path":I
    const v2, 0xffff

    #@11
    if-eq v0, v2, :cond_1

    #@13
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@15
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    #@18
    move-result v2

    #@19
    if-ne v0, v2, :cond_1

    #@1b
    .line 268
    return v3

    #@1c
    .line 270
    :cond_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@1e
    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    #@21
    move-result v1

    #@22
    .line 271
    .local v1, "portId":I
    const/4 v2, -0x1

    #@23
    if-ne v1, v2, :cond_2

    #@25
    .line 272
    const/4 v2, 0x0

    #@26
    return v2

    #@27
    .line 274
    :cond_2
    return v3
.end method

.method static isValidType(I)Z
    .locals 2
    .param p0, "type"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 287
    if-ltz p0, :cond_0

    #@3
    .line 288
    const/4 v1, 0x7

    #@4
    if-gt p0, v1, :cond_0

    #@6
    .line 289
    const/4 v1, 0x2

    #@7
    if-eq p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 287
    :cond_0
    return v0
.end method

.method private static toErrorCode(Z)I
    .locals 1
    .param p0, "success"    # Z

    #@0
    .prologue
    .line 293
    if-eqz p0, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x3

    #@5
    goto :goto_0
.end method


# virtual methods
.method isValid(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 7
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/16 v4, 0xf

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x0

    #@4
    .line 194
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@7
    move-result v2

    #@8
    .line 195
    .local v2, "opcode":I
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mValidationInfo:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    #@10
    .line 196
    .local v1, "info":Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;
    if-nez v1, :cond_0

    #@12
    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "No validation information for the message: "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    new-array v4, v5, [Ljava/lang/Object;

    #@28
    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    #@2b
    .line 198
    return v5

    #@2c
    .line 202
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@2f
    move-result v3

    #@30
    if-ne v3, v4, :cond_1

    #@32
    .line 203
    iget v3, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    #@34
    and-int/lit8 v3, v3, 0x4

    #@36
    if-nez v3, :cond_1

    #@38
    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v4, "Unexpected source: "

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    new-array v4, v5, [Ljava/lang/Object;

    #@4e
    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    #@51
    .line 205
    const/4 v3, 0x1

    #@52
    return v3

    #@53
    .line 208
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    #@56
    move-result v3

    #@57
    if-ne v3, v4, :cond_2

    #@59
    .line 209
    iget v3, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    #@5b
    and-int/lit8 v3, v3, 0x2

    #@5d
    if-nez v3, :cond_3

    #@5f
    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v4, "Unexpected broadcast message: "

    #@67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v3

    #@73
    new-array v4, v5, [Ljava/lang/Object;

    #@75
    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    #@78
    .line 211
    return v6

    #@79
    .line 214
    :cond_2
    iget v3, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    #@7b
    and-int/lit8 v3, v3, 0x1

    #@7d
    if-nez v3, :cond_3

    #@7f
    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v4, "Unexpected direct message: "

    #@87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v3

    #@8b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v3

    #@8f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v3

    #@93
    new-array v4, v5, [Ljava/lang/Object;

    #@95
    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    #@98
    .line 216
    return v6

    #@99
    .line 221
    :cond_3
    iget-object v3, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;

    #@9b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@9e
    move-result-object v4

    #@9f
    invoke-interface {v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;->isValid([B)I

    #@a2
    move-result v0

    #@a3
    .line 222
    .local v0, "errorCode":I
    if-eqz v0, :cond_4

    #@a5
    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v4, "Unexpected parameters: "

    #@ad
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v3

    #@b1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v3

    #@b5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v3

    #@b9
    new-array v4, v5, [Ljava/lang/Object;

    #@bb
    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    #@be
    .line 224
    return v0

    #@bf
    .line 226
    :cond_4
    return v5
.end method
