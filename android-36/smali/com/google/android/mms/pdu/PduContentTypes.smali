.class public Lcom/google/android/mms/pdu/PduContentTypes;
.super Ljava/lang/Object;
.source "PduContentTypes.java"


# static fields
.field static final greylist contentTypes:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 84

    .line 28
    const-string v82, "application/vnd.oma.dd2+xml"

    const-string v83, "application/mikey"

    const-string v1, "*/*"

    const-string/jumbo v2, "text/*"

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "text/plain"

    const-string/jumbo v5, "text/x-hdml"

    const-string/jumbo v6, "text/x-ttml"

    const-string/jumbo v7, "text/x-vCalendar"

    const-string/jumbo v8, "text/x-vCard"

    const-string/jumbo v9, "text/vnd.wap.wml"

    const-string/jumbo v10, "text/vnd.wap.wmlscript"

    const-string/jumbo v11, "text/vnd.wap.wta-event"

    const-string v12, "multipart/*"

    const-string v13, "multipart/mixed"

    const-string v14, "multipart/form-data"

    const-string v15, "multipart/byterantes"

    const-string v16, "multipart/alternative"

    const-string v17, "application/*"

    const-string v18, "application/java-vm"

    const-string v19, "application/x-www-form-urlencoded"

    const-string v20, "application/x-hdmlc"

    const-string v21, "application/vnd.wap.wmlc"

    const-string v22, "application/vnd.wap.wmlscriptc"

    const-string v23, "application/vnd.wap.wta-eventc"

    const-string v24, "application/vnd.wap.uaprof"

    const-string v25, "application/vnd.wap.wtls-ca-certificate"

    const-string v26, "application/vnd.wap.wtls-user-certificate"

    const-string v27, "application/x-x509-ca-cert"

    const-string v28, "application/x-x509-user-cert"

    const-string v29, "image/*"

    const-string v30, "image/gif"

    const-string v31, "image/jpeg"

    const-string v32, "image/tiff"

    const-string v33, "image/png"

    const-string v34, "image/vnd.wap.wbmp"

    const-string v35, "application/vnd.wap.multipart.*"

    const-string v36, "application/vnd.wap.multipart.mixed"

    const-string v37, "application/vnd.wap.multipart.form-data"

    const-string v38, "application/vnd.wap.multipart.byteranges"

    const-string v39, "application/vnd.wap.multipart.alternative"

    const-string v40, "application/xml"

    const-string/jumbo v41, "text/xml"

    const-string v42, "application/vnd.wap.wbxml"

    const-string v43, "application/x-x968-cross-cert"

    const-string v44, "application/x-x968-ca-cert"

    const-string v45, "application/x-x968-user-cert"

    const-string/jumbo v46, "text/vnd.wap.si"

    const-string v47, "application/vnd.wap.sic"

    const-string/jumbo v48, "text/vnd.wap.sl"

    const-string v49, "application/vnd.wap.slc"

    const-string/jumbo v50, "text/vnd.wap.co"

    const-string v51, "application/vnd.wap.coc"

    const-string v52, "application/vnd.wap.multipart.related"

    const-string v53, "application/vnd.wap.sia"

    const-string/jumbo v54, "text/vnd.wap.connectivity-xml"

    const-string v55, "application/vnd.wap.connectivity-wbxml"

    const-string v56, "application/pkcs7-mime"

    const-string v57, "application/vnd.wap.hashed-certificate"

    const-string v58, "application/vnd.wap.signed-certificate"

    const-string v59, "application/vnd.wap.cert-response"

    const-string v60, "application/xhtml+xml"

    const-string v61, "application/wml+xml"

    const-string/jumbo v62, "text/css"

    const-string v63, "application/vnd.wap.mms-message"

    const-string v64, "application/vnd.wap.rollover-certificate"

    const-string v65, "application/vnd.wap.locc+wbxml"

    const-string v66, "application/vnd.wap.loc+xml"

    const-string v67, "application/vnd.syncml.dm+wbxml"

    const-string v68, "application/vnd.syncml.dm+xml"

    const-string v69, "application/vnd.syncml.notification"

    const-string v70, "application/vnd.wap.xhtml+xml"

    const-string v71, "application/vnd.wv.csp.cir"

    const-string v72, "application/vnd.oma.dd+xml"

    const-string v73, "application/vnd.oma.drm.message"

    const-string v74, "application/vnd.oma.drm.content"

    const-string v75, "application/vnd.oma.drm.rights+xml"

    const-string v76, "application/vnd.oma.drm.rights+wbxml"

    const-string v77, "application/vnd.wv.csp+xml"

    const-string v78, "application/vnd.wv.csp+wbxml"

    const-string v79, "application/vnd.syncml.ds.notification"

    const-string v80, "audio/*"

    const-string/jumbo v81, "video/*"

    filled-new-array/range {v1 .. v83}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
