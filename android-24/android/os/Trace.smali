.class public final Landroid/os/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Trace$1;
    }
.end annotation


# static fields
.field private static final MAX_SECTION_NAME_LEN:I = 0x7f

.field private static final TAG:Ljava/lang/String; = "Trace"

.field public static final TRACE_TAG_ACTIVITY_MANAGER:J = 0x40L

.field public static final TRACE_TAG_ALWAYS:J = 0x1L

.field public static final TRACE_TAG_APP:J = 0x1000L

.field public static final TRACE_TAG_AUDIO:J = 0x100L

.field public static final TRACE_TAG_BIONIC:J = 0x10000L

.field public static final TRACE_TAG_CAMERA:J = 0x400L

.field public static final TRACE_TAG_DALVIK:J = 0x4000L

.field public static final TRACE_TAG_DATABASE:J = 0x100000L

.field public static final TRACE_TAG_GRAPHICS:J = 0x2L

.field public static final TRACE_TAG_HAL:J = 0x800L

.field public static final TRACE_TAG_INPUT:J = 0x4L

.field public static final TRACE_TAG_NEVER:J = 0x0L

.field private static final TRACE_TAG_NOT_READY:J = -0x8000000000000000L

.field public static final TRACE_TAG_PACKAGE_MANAGER:J = 0x40000L

.field public static final TRACE_TAG_POWER:J = 0x20000L

.field public static final TRACE_TAG_RESOURCES:J = 0x2000L

.field public static final TRACE_TAG_RS:J = 0x8000L

.field public static final TRACE_TAG_SYNC_MANAGER:J = 0x80L

.field public static final TRACE_TAG_SYSTEM_SERVER:J = 0x80000L

.field public static final TRACE_TAG_VIDEO:J = 0x200L

.field public static final TRACE_TAG_VIEW:J = 0x8L

.field public static final TRACE_TAG_WEBVIEW:J = 0x10L

.field public static final TRACE_TAG_WINDOW_MANAGER:J = 0x20L

.field private static volatile sEnabledTags:J


# direct methods
.method static synthetic -wrap0()J
    .locals 2

    #@0
    invoke-static {}, Landroid/os/Trace;->cacheEnabledTags()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 89
    const-wide/high16 v0, -0x8000000000000000L

    #@2
    sput-wide v0, Landroid/os/Trace;->sEnabledTags:J

    #@4
    .line 109
    new-instance v0, Landroid/os/Trace$1;

    #@6
    invoke-direct {v0}, Landroid/os/Trace$1;-><init>()V

    #@9
    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    #@c
    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static asyncTraceBegin(JLjava/lang/String;I)V
    .locals 2
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    #@0
    .prologue
    .line 244
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 245
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeAsyncTraceBegin(JLjava/lang/String;I)V

    #@9
    .line 243
    :cond_0
    return-void
.end method

.method public static asyncTraceEnd(JLjava/lang/String;I)V
    .locals 2
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    #@0
    .prologue
    .line 261
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 262
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeAsyncTraceEnd(JLjava/lang/String;I)V

    #@9
    .line 260
    :cond_0
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 4
    .param p0, "sectionName"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v2, 0x1000

    #@2
    .line 278
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v0

    #@c
    const/16 v1, 0x7f

    #@e
    if-le v0, v1, :cond_0

    #@10
    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "sectionName is too long"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 282
    :cond_0
    invoke-static {v2, v3, p0}, Landroid/os/Trace;->nativeTraceBegin(JLjava/lang/String;)V

    #@1c
    .line 277
    :cond_1
    return-void
.end method

.method private static cacheEnabledTags()J
    .locals 2

    #@0
    .prologue
    .line 134
    invoke-static {}, Landroid/os/Trace;->nativeGetEnabledTags()J

    #@3
    move-result-wide v0

    #@4
    .line 135
    .local v0, "tags":J
    sput-wide v0, Landroid/os/Trace;->sEnabledTags:J

    #@6
    .line 136
    return-wide v0
.end method

.method public static endSection()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x1000

    #@2
    .line 294
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 295
    invoke-static {v2, v3}, Landroid/os/Trace;->nativeTraceEnd(J)V

    #@b
    .line 293
    :cond_0
    return-void
.end method

.method public static isTagEnabled(J)Z
    .locals 6
    .param p0, "traceTag"    # J

    #@0
    .prologue
    .line 148
    sget-wide v0, Landroid/os/Trace;->sEnabledTags:J

    #@2
    .line 149
    .local v0, "tags":J
    const-wide/high16 v2, -0x8000000000000000L

    #@4
    cmp-long v2, v0, v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 150
    invoke-static {}, Landroid/os/Trace;->cacheEnabledTags()J

    #@b
    move-result-wide v0

    #@c
    .line 152
    :cond_0
    and-long v2, v0, p0

    #@e
    const-wide/16 v4, 0x0

    #@10
    cmp-long v2, v2, v4

    #@12
    if-eqz v2, :cond_1

    #@14
    const/4 v2, 0x1

    #@15
    :goto_0
    return v2

    #@16
    :cond_1
    const/4 v2, 0x0

    #@17
    goto :goto_0
.end method

.method private static native nativeAsyncTraceBegin(JLjava/lang/String;I)V
.end method

.method private static native nativeAsyncTraceEnd(JLjava/lang/String;I)V
.end method

.method private static native nativeGetEnabledTags()J
.end method

.method private static native nativeSetAppTracingAllowed(Z)V
.end method

.method private static native nativeSetTracingEnabled(Z)V
.end method

.method private static native nativeTraceBegin(JLjava/lang/String;)V
.end method

.method private static native nativeTraceCounter(JLjava/lang/String;I)V
.end method

.method private static native nativeTraceEnd(J)V
.end method

.method public static setAppTracingAllowed(Z)V
    .locals 0
    .param p0, "allowed"    # Z

    #@0
    .prologue
    .line 177
    invoke-static {p0}, Landroid/os/Trace;->nativeSetAppTracingAllowed(Z)V

    #@3
    .line 181
    invoke-static {}, Landroid/os/Trace;->cacheEnabledTags()J

    #@6
    .line 176
    return-void
.end method

.method public static setTracingEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    #@0
    .prologue
    .line 193
    invoke-static {p0}, Landroid/os/Trace;->nativeSetTracingEnabled(Z)V

    #@3
    .line 197
    invoke-static {}, Landroid/os/Trace;->cacheEnabledTags()J

    #@6
    .line 192
    return-void
.end method

.method public static traceBegin(JLjava/lang/String;)V
    .locals 2
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 211
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 212
    invoke-static {p0, p1, p2}, Landroid/os/Trace;->nativeTraceBegin(JLjava/lang/String;)V

    #@9
    .line 210
    :cond_0
    return-void
.end method

.method public static traceCounter(JLjava/lang/String;I)V
    .locals 2
    .param p0, "traceTag"    # J
    .param p2, "counterName"    # Ljava/lang/String;
    .param p3, "counterValue"    # I

    #@0
    .prologue
    .line 165
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 166
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeTraceCounter(JLjava/lang/String;I)V

    #@9
    .line 164
    :cond_0
    return-void
.end method

.method public static traceEnd(J)V
    .locals 2
    .param p0, "traceTag"    # J

    #@0
    .prologue
    .line 225
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 226
    invoke-static {p0, p1}, Landroid/os/Trace;->nativeTraceEnd(J)V

    #@9
    .line 224
    :cond_0
    return-void
.end method
